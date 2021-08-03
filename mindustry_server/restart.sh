#!/bin/bash

screen_name=$"mindustry_server"
cmd1=$"stop";
cmd2=$"exit";
screen -x -S $screen_name -p 0 -X stuff $'\n'
screen -x -S $screen_name -p 0 -X stuff "$cmd1"
screen -x -S $screen_name -p 0 -X stuff $'\n'
screen -x -S $screen_name -p 0 -X stuff "$cmd2"
screen -x -S $screen_name -p 0 -X stuff $'\n'

echo "$cmd1" is called.
echo "$cmd2" is called.
echo `date` "stopping" > /tmp/min.txt

sleep 10
pkill -9 screen
sleep 2
cd /home/steamuser/mindustry_server129/ && screen -d -m -S "mindustry_server" -L ./run_server.sh



# Because the steam client seems drop occasionally,
# try reboot every morning.
# add following lines with "crontab -e"
# to restart it at 04:00 everyday 
# 0 4 * * * /home/steamuser/mindustry_server129/restart.sh
