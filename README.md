# bodyharvestdecomp

Decompilation of Body Harvest for the Nintendo 64.

## Setup
Clone the repo.
Use the .yaml to split a Body Harvest (U) ROM with [N64Split](https://github.com/queueRAM/sm64tools).
Copy the bin folder from the split output to the repo.
Either use the dockerfile itself, or read it to see how to setup a build environment.
You'll need qemu-irix in the same location as the dockerfile when you build it.
```
docker build -t n64split_build .
docker run -it --rm -v /sm64:/app/src -w /app/src n64split_build:latest make
```
Where /sm64 is the shared folder on your pc where you've put the repo.
You may need to read the instructions in the dockerfile on sharing a folder if you're running via virtualbox.
If you get an error about qemu-irix run:
```
docker run -it --rm -v /sm64:/app/src -w /app/src n64split_build:latest bash
```
And then run make in the terminal.
This should build a 1:1  ROM in the repo dir.

## Notes

Currently only two functions are written in c.
The majority of the work is in /Decompiled where I've been rewriting functions in d.
This isn't currently compiled into the ROM, though in theory you can compile d to MIPS if you know more than me.

## Questions
Why are you using a janky hack of the Super Mario 64 decomp makefile?
I don't know any better, help is welcome, especially if you know how to setup a compiler that will compile the ld and sd operations in the ROM. I've had to change them to data in the .s file so the compiler doesn't turn them into two sw or lw.