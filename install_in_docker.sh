#!/bin/bash

sudo apt install docker -y

sudo docker pull adoptopenjdk/openjdk11:jre

sudo docker build ./ -t -t mtdserver:129.2-plugin-lobby-wayzer

sudo docker start

