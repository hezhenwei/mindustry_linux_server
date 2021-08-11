FROM adoptopenjdk/openjdk11:jre
RUN useradd -m -u 1001 -U steamuser \
        && mkdir /home/steamuser/mindustry_server_latest \
        && chown 1001:1001 /home/steamuser/mindustry_server_latest
COPY --chown=1001:1001 ./mindustry_server129 /home/steamuser/mindustry_server_latest
