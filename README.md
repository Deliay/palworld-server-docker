Palworld Server
----
Default install directory is `/home/steam/Steam/`

## start server
```
docker run --name=pal \
 -e PORT=8211 \
 -e MAX_PLAYER=32 \
 -p 8211:8211
 registry.cn-beijing.aliyuncs.com/zero-tools/pal-docker:latest
```

## mount config
```
-v $your_config_path:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini
```

## mount world
```
-v $your_world_directory:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved/SaveGames
```

## example
```bash
export SETTING=/home/example/pal/PalWorldSettings.ini
export SAVE=/home/example/pal/save

docker run --name=pal \
 -e PORT=8211 \
 -e MAX_PLAYER=32 \
 -v $SETTING:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini \
 -v $SAVE:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved/SaveGames \
 -p 8211:8211 \
 registry.cn-beijing.aliyuncs.com/zero-tools/pal-docker:latest
```
