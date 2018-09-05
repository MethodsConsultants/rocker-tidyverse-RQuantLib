FROM rocker/tidyverse:latest

RUN apt-get update -qq \
  && apt-get -y --no-install-recommends install \
    libquantlib0-dev \
  && install2.r --error \
    --repos 'http://cran.rstudio.com' \
    RQuantLib
