FROM cm2network/steamcmd AS base

RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +app_update 1007 +quit

FROM base AS pal-server
RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +app_update 2394010 +quit

FROM pal-server
WORKDIR /home/steam/Steam/steamapps/common/PalServer/
ENTRYPOINT [ "bash", "./PalServer.sh" ]