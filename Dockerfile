FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install git
RUN add-apt-repository ppa:heyarje/makemkv-beta
RUN add-apt-repository ppa:stebbins/handbrake-releases
RUN add-apt-repository ppa:mc3man/bionic-prop
RUN apt update
RUN apt install makemkv-bin makemkv-oss
RUN apt install handbrake-cli libavcodec-extra
RUN apt install abcde flac imagemagick glyrc cdparanoia
RUN apt install at
RUN apt install python3 python3-pip
RUN apt-get install libcurl4-openssl-dev libssl-dev
RUN apt-get install libdvd-pkg
RUN dpkg-reconfigure libdvd-pkg
RUN apt install default-jre-headless