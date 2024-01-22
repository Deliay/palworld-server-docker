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

## example
```bash
cd ~
mkdir pal
cd pal
export SETTING=$(pwd)/PalWorldSettings.ini
export SAVE=$(pwd)/save

docker run --pull -d --name=pal \
 -e PORT=8211 \
 -e MAX_PLAYER=32 \
 -v $SETTING:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini \
 -v $SAVE:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved/SaveGames \
 -p 8211:8211/udp \
 registry.cn-beijing.aliyuncs.com/zero-tools/pal-docker:latest
```
