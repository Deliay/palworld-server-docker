帕鲁国内镜像
----

## 快速运行
```bash
cd ~
mkdir pal
cd pal
export SAVE=$(pwd)

docker run --pull=always -d --name=pal \
 -e PORT=8211 \
 -e MAX_PLAYER=32 \
 -v $SAVE:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved \
 -p 8211:8211/udp \
 -m 16G \
 --restart=always \
 registry.cn-beijing.aliyuncs.com/zero-tools/pal-docker:latest
```
## TAG列表

### 官方原版
| 版本 | TAG | 备注 | 
| - | - | - |
| 官方最新版 | latest | 当前版本 0.1.3 |
| 0.1.3版 | 0.1.3 | |
| 0.1.2版 | 0.1.2 | |

### VeroFess patch版本
⚠️ 不保证镜像安全，请到对应repo确认自己可以采用后再使用:

https://github.com/VeroFess/PalWorld-Server-Unoffical-Fix

| 版本 | TAG | 备注 | 
| - | - | - |
| 官方最新版+VeroFess patch Update2 | latest-vero-fess-patched |  |
| 0.1.3版+VeroFess patch beta | 0.1.3-vero-fess-patched-beta |  |

### 如何使用tag
将命令中的`registry.cn-beijing.aliyuncs.com/zero-tools/pal-docker:latest`最后的`latest`部分替换为对应tag即可，比如使用patched版本，则替换为`registry.cn-beijing.aliyuncs.com/zero-tools/pal-docker:latest-vero-fess-patched`