# どのイメージを基にするか
FROM ubuntu:16.04


RUN  apt-get update -y --fix-missing
RUN  apt-get upgrade -y
RUN  apt-get install -y apt-utils
RUN  apt -y install build-essential 
RUN  apt -y install wget
RUN  wget https://cmake.org/files/v3.15/cmake-3.15.0-rc3-Linux-x86_64.sh
RUN  chmod +x cmake-3.15.0-rc3-Linux-x86_64.sh
RUN  echo y | ./cmake-3.15.0-rc3-Linux-x86_64.sh 
RUN  mv cmake-3.15.0-rc3-Linux-x86_64 /opt
RUN  ln -s /opt/cmake-3.15.0-rc3-Linux-x86_64/bin/* /usr/bin
RUN  apt-get -y install git 
RUN  apt-get -y install libicu-dev
RUN  apt -y install libboost-dev
RUN  apt-get -y install libeigen3-dev
# RUN  apt-get install cmake -y
RUN  apt -y install libboost-all-dev
RUN  apt-get install zip unzip
RUN  apt -y install curl
RUN  cd
RUN  curl -L -O https://github.com/AotoKaburaki/Reborn/archive/master.zip
RUN  unzip master.zip && rm master.zip
RUN  mv Reborn-master Reborn
RUN  cd Reborn  && sh set_up.sh




