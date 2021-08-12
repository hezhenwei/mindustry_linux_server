#!/bin/bash

#if it's root create steamuser account 
me=$(whoami)

if [ $me=='root' ];
then
   echo "it's root. now create steamuser account of host"
   useradd -m -U -s /bin/bash steamuser 
else
   echo its $me.
fi

sudo apt update
sudo apt install docker.io unzip -y

sudo docker pull adoptopenjdk/openjdk11:jre

# download the server tar file and unzip first then
mkdir ./mindustry_server_latest/config
mkdir ./mindustry_server_latest/config/mods
wget https://github.com/way-zer/ScriptAgent4MindustryExt/releases/download/v2.9.0/ScriptAgent4Mindustry-2.9.jar
mv ./ScriptAgent4Mindustry-2.9.jar ./mindustry_server_latest/config/mods
wget https://github.com/way-zer/ScriptAgent4MindustryExt/releases/download/v2.9.0/ScriptAgent4Mindustry-2.9.0-scripts.zip
unzip ./ScriptAgent4Mindustry-2.9.0-scripts.zip -d ScriptAgent4Mindustry-2.9.0-scripts
mv ./ScriptAgent4Mindustry-2.9.0-scripts ./mindustry_server_latest/config/scripts

#echo getting steam lobby plugin
#wget https://github.com/shugen002/MDTSteamLobbyPlugin/releases/download/1.2.0/MDTSteamLobbyPlugin.jar
#mv ./MDTSteamLobbyPlugin.jar ./mindustry_server_latest/config/mods

sudo docker build ./ -t hezhenwei/mtdserver:129.2-plugin-lobby-wayzer

sudo docker create -it -p 6568:6567 --name mymtd hezhenwei/mtdserver:129.2-plugin-lobby-wayzer

sudo docker start mymtd
~
