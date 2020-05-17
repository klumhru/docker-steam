FROM ubuntu:18.04

RUN apt update
RUN apt-get install lib32gcc1 ca-certificates -yq

RUN mkdir steamcmd
WORKDIR /home/ubuntu/steamcmd
ADD https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz steamcmd_linux.tar.gz
RUN tar zxf steamcmd_linux.tar.gz

ARG STEAMUSER
ARG STEAMPASS
ARG STEAMGUARD
RUN /home/ubuntu/steamcmd/steamcmd.sh +login ${STEAMUSER} ${STEAMPASS} ${STEAMGUARD} +quit
