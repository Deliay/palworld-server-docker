Palworld Server
----
Default install directory is `/home/steam/Steam/`

## start server
```
docker run --name=pal -e PORT=8211 -e MAX_PLAYER=32 registry.cn-beijing.aliyuncs.com/zero-tools/pal-docker:latest
```

## mount config
```
-v $your_config:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini
```

## mount world
```
-v $your_world_directory:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved/SaveGames
```