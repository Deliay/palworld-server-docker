FROM registry.cn-beijing.aliyuncs.com/zero-tools/pal-base:latest AS pal-base
ENV PORT=8211
ENV MAX_PALYER=32

COPY . .
ENTRYPOINT [ "bash" "entrypoint.sh" ]
