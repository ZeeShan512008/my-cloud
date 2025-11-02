FROM alpine:latest

RUN apk add --no-cache tar bash

COPY linux-arm64-filebrowser.tar.gz /app/filebrowser.tar.gz

WORKDIR /app

RUN tar -xvf filebrowser.tar.gz && chmod +x filebrowser

EXPOSE 8080

CMD ["./filebrowser", "--port", "8080", "--root", "/app/data"]
