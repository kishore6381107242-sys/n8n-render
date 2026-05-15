FROM jrottenberg/ffmpeg:6.0-alpine

RUN apk add --no-cache nodejs npm

RUN npm install -g n8n

EXPOSE 5678

CMD ["n8n"]
