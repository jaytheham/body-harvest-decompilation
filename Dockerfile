# docker run -it --rm -v /sm64:/app/src -w /app/src n64split_build:latest make
# If error about QEMU_IRIX do bash instead of make, then make inside the image
# /sm64 is the docker-accessible folder containing the decomp repo
FROM ubuntu:18.04

WORKDIR /bin

#COPY . /bin
COPY qemu-irix /bin

WORKDIR /

RUN apt-get update && apt-get install -y \
	binutils-mips-linux-gnu \
	build-essential \
	git \
	libcapstone3 \
	libglib2.0-dev \
	libpixman-1-dev \
	make \
	pkg-config \
	python3 \
	zlib1g-dev 

RUN echo "export QEMU_IRIX=/bin/qemu-irix" >> ~/.bashrc

# Preparing VirtualBox to Share Folders
# To achieve this, the folder (e.g. H:\work) needs to be shared with the VirtualBox virtual machine named default, before it can be mounted as a volume within a Docker container. There may be other approaches, but here are the steps for our particular set-up:
#     Open "Docker Quickstart Terminal".
#     Once Docker is running, type docker-machine stop default.
#     Open the Command Line from the start menu (search for cmd.exe).
#     Navigate to the VirtualBox folder using cd C:/Program Files/Oracle/VirtualBox
#     Type VBoxManage.exe sharedfolder add default --name "h/work" --hostpath "\\?\h:\work" --automount

#		At above step change name var to what you'll pass in to docker run -v

#     Type VBoxManage.exe setextradata default VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root 1
#     Type VBoxManage.exe setextradata default VBoxInternal2/SharedFoldersEnableSymlinksCreate/h/work 1
# 
# The above steps will prepare VirtualBox for sharing H:\work. Now we need to mount the directory inside our docker-machine:
#     Open "Docker Quickstart Terminal".
#     Once Docker is running, type docker-machine ssh default
#     Type sudo mkdir --parents /h/work
#     Type sudo mount -t vboxsf h/work /h/work/
#     Type exit
# 
# You can now create Docker container instances and share the H:\work folder with them as a mounted volume. Let's demonstrate this with jupyter/scipy-notebook
# Sharing Folders with a Docker Container
# 
# To create a Docker container from the jupyter/scipy-notebook image, type the following command and wait for it to complete execution: docker run --name="scipy" --user root -v /h/work:/home/jovyan -d -e GRANT_SUDO=yes -p 8888:8888 jupyter/scipy-notebook start-notebook.sh --NotebookApp.token=''