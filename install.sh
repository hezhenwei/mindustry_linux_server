#!/bin/bash

sudo apt install docker -y

sudo docker pull adoptopenjdk/openjdk11:jre

sudo docker create  --name mindustry_server  adoptopenjdk/openjdk11:jre

sudo docker run 

