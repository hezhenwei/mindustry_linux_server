#!/bin/bash

## create a user: steamuser first

## create folder mindustry_server_latest 

## download the server file and unzip into that folder

## download the .service file, start/stop script files into that folder.

sudo cp ./mindustry_server.service /lib/systemd/system/

sudo systemctl enable mindustry_server

sudo systemctl start mindustry_server.service
