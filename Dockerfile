FROM ubuntu:18.04

MAINTAINER nochex

RUN apt-get update && apt-get install -y g++ build-essential autoconf automake automake1.9 cmake doxygen bison flex libncurses5-dev libsdl1.2-dev libreadline-dev libusb-dev texinfo libgmp3-dev libmpfr-dev libelf-dev libmpc-dev libfreetype6-dev zlib1g-dev libtool libtool subversion git tcl unzip wget
RUN sudo useradd -m user && cd /home/user/
RUN git clone https://github.com/top-sekret/psptoolchain && cd psptoolchain && ./prepare.sh
RUN ./toolchain-sudo.sh > output_file.log