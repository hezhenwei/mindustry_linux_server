FROM adoptopenjdk/openjdk11:jre
RUN useradd -m -u 1001 -U -s /bin/bash steamuser \
        && mkdir /home/steamuser/mindustry_server_latest \
        && chown steamuser:steamuser /home/steamuser/mindustry_server_latest
COPY --chown=steamuser ./mindustry_server_latest /home/steamuser/mindustry_server_latest

USER steamuser
WORKDIR /home/steamuser/mindustry_server_latest
CMD /bin/bash /opt/java/openjdk/bin/java -jar server.jar

EXPOSE 6567
