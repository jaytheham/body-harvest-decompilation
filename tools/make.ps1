# runs the make clean && make build inside the bh-container

docker exec -it bh-container bash -c "make -j QUIET=1"