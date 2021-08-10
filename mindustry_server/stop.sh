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

