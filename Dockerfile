FROM adoptopenjdk/openjdk11:jre
ARG DEBIAN_FRONTEND=noninteractive
RUN useradd -m -u 1001 -U -s /bin/bash steamuser \
        && mkdir /home/steamuser/mindustry_server_latest \
        && chown steamuser:steamuser /home/steamuser/mindustry_server_latest \
        && apt update \
        && apt-get -y install sudo dialog apt-utils \
        && apt install screen -y \
        && echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
COPY --chown=steamuser ./mindustry_server_latest /home/steamuser/mindustry_server_latest

USER steamuser
WORKDIR /home/steamuser/mindustry_server_latest
CMD screen  -D -m -S "mindustry_server" -L ./run_server.sh

EXPOSE 6567

