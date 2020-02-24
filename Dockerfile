FROM ubuntu:18.04

MAINTAINER nochex

RUN apt-get update && apt-get install git
RUN sudo useradd -m user && cd /home/user/
RUN git clone https://github.com/top-sekret/psptoolchain && cd psptoolchain && ./prepare.sh
RUN ./toolchain-sudo.sh > output_file.log
