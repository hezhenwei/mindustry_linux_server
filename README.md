# mindustry_linux_server

Steps to serve a linux mindustry server.
I just like to save the steps so next time i woun't need to re-do it again.

script in folder "webserver" will create a apache web server at port 20080
and link the folder mindustry_maps using tinyfilemanager to uploadfiles.
need to change userpass in config.php
need to change maps to 777 to allow it to write.

run the following comment to automaticall setup a server
```shell
wget https://raw.githubusercontent.com/hezhenwei/mindustry_linux_server/main/install_in_docker.sh
chmod 755 ./install_in_docker.sh
./install_in_docker.sh
```

get MDTSteamLobbyPlugin mod here:
https://github.com/shugen002/MDTSteamLobbyPlugin

get wayzer server mod here:
https://github.com/way-zer/ScriptAgent4MindustryExt

 tinyfilemanager is used.
