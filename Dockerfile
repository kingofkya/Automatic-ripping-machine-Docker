FROM ubuntu:18.04

RUN apt -y update
RUN apt-get -y install git apt-utils software-properties-common
RUN add-apt-repository -y ppa:heyarje/makemkv-beta
RUN add-apt-repository -y ppa:stebbins/handbrake-releases
RUN add-apt-repository -y ppa:mc3man/bionic-prop
RUN apt -y update
RUN apt -y install makemkv-bin makemkv-oss
RUN apt -y install handbrake-cli libavcodec-extra
RUN echo 'postfix postfix/mailname string your.hostname.com' | debconf-set-selections
RUN echo "postfix postfix/main_mailer_type string Internet Site" | debconf-set-selections



RUN apt -y install abcde flac imagemagick glyrc cdparanoia
RUN apt -y install at
RUN apt -y install python3 python3-pip
RUN apt-get -y install libcurl4-openssl-dev libssl-dev

RUN apt install -y default-jre-headless
RUN while true; do sleep 1000; done
