#!/bin/bash

# Add following line using "crontab -e"
# to reload new maps every 5 minutes
# */5 * * * * /home/steamuser/mindustry_server129/force_reloadmaps.sh

screen_name=$"mindustry_server"
cmd=$"reloadmaps";
screen -x -S $screen_name -p 0 -X stuff $'\n'
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff $'\n'

echo "$cmd" is called.
echo `date` > /tmp/min.txt
