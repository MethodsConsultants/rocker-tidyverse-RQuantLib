FROM rocker/tidyverse:latest

RUN echo "deb http://deb.debian.org/debian unstable main" >> /etc/apt/sources.list
RUN apt-get update -qq
RUN apt-get -y --no-install-recommends install libquantlib0-dev/unstable
RUN install2.r --error \
    RQuantLib
