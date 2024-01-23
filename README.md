Palworld Server in Docker
----
In this container, steam installed at `/home/steam/Steam/`

## start server
```
docker run --name=pal \
 -e PORT=8211 \
 -e MAX_PLAYER=32 \
 -p 8211:8211/udp
 registry.cn-beijing.aliyuncs.com/zero-tools/pal-docker:latest
```

## mount config
```
-v $your_config_path:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini
```

## mount save directory
```
-v $your_save_directory:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved/SaveGames
```

## restrict memory and restart after oom
```
-m 16G
--restart=always
```

## example
```bash
cd ~
mkdir pal
cd pal
export GAME_SETTING=$(pwd)/PalWorldSettings.ini
export WORLD_SETTING=$(pwd)/GameUserSettings.ini
export SAVE=$(pwd)/save

docker run --pull -d --name=pal \
 -e PORT=8211 \
 -e MAX_PLAYER=32 \
 -v $GAME_SETTING:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini \
 -v $WORLD_SETTING:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini \
 -v $SAVE:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved/SaveGames \
 -p 8211:8211/udp \
 -m 16G \
 --restart=always \
 registry.cn-beijing.aliyuncs.com/zero-tools/pal-docker:latest
```
