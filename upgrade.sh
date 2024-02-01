cd pal-base
docker build --no-cache . -t registry.cn-beijing.aliyuncs.com/zero-tools/pal-base

cd ../pal-docker
docker build --no-cache . -t registry.cn-beijing.aliyuncs.com/zero-tools/pal-docker:$1
docker push registry.cn-beijing.aliyuncs.com/zero-tools/pal-docker:$1

docker tag registry.cn-beijing.aliyuncs.com/zero-tools/pal-docker:$1 registry.cn-beijing.aliyuncs.com/zero-tools/pal-docker:latest
docker push registry.cn-beijing.aliyuncs.com/zero-tools/pal-docker:latest
