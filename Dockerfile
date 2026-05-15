FROM n8nio/n8n:latest

USER root

RUN apk update && \
    apk add --no-cache ffmpeg python3 py3-pip && \
    pip3 install edge-tts --break-system-packages && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /tmp/videos && chmod 777 /tmp/videos

USER node

EXPOSE 5678
