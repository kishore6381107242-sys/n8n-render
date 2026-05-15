FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache \
    ffmpeg \
    imagemagick \
    python3 \
    py3-pip \
    git \
    curl \
    bash

RUN pip install yt-dlp

USER node

EXPOSE 5678
