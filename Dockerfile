FROM ubuntu:18.04


RUN apt-get -y install git
RUN add-apt-repository -y ppa:heyarje/makemkv-beta
RUN add-apt-repository -y ppa:stebbins/handbrake-releases
RUN add-apt-repository -y ppa:mc3man/bionic-prop
RUN apt -y update
RUN apt -y install makemkv-bin makemkv-oss
RUN apt -y install handbrake-cli libavcodec-extra
RUN apt -y install abcde flac imagemagick glyrc cdparanoia
RUN apt -y install at
RUN apt -y install python3 python3-pip
RUN apt-get -y install libcurl4-openssl-dev libssl-dev
RUN apt-get -y install libdvd-pkg
RUN dpkg-reconfigure -y libdvd-pkg
RUN apt install -y default-jre-headless
