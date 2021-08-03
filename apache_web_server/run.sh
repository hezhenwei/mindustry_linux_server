#!/bin/bash

#sudo docker run -it -p 20080:80 php:7.3.29-apache /bin/bash
sudo docker run -d -p 20080:80 --name webserver -v /home/steamuser/docker/apache/html:/var/www/html -v /home/steamuser/mindustry_maps_share:/var/www/maps php:7.3.29-apache
