# mindustry_linux_server

Steps to serve a linux mindustry server.
I just like to save the steps so next time i woun't need to re-do it again.

you can choose to setup manually or setup in docker.
Also you may optionally choose to setup a webserver to manage maps

## Setup Manually
get MDTSteamLobbyPlugin mod here:
https://github.com/shugen002/MDTSteamLobbyPlugin

get wayzer server mod here:
https://github.com/way-zer/ScriptAgent4MindustryExt

 
 
## Setup a server in Docker
run the following comment to automaticall setup a server
```shell
wget https://raw.githubusercontent.com/hezhenwei/mindustry_linux_server/main/install_in_docker.sh
chmod 755 ./install_in_docker.sh
./install_in_docker.sh
```

## Setup map web server
script in folder "webserver" will create a apache web server at port 20080
and link the folder mindustry_maps using tinyfilemanager to uploadfiles.
need to change userpass in config.php
need to change maps to 777 to allow it to write.
tinyfilemanager is used.
