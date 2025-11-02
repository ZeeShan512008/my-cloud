FROM alpine:latest

RUN apk add --no-cache wget unzip

RUN wget -O /tmp/filebrowser.tar.gz https://github.com/filebrowser/filebrowser/releases/latest/download/linux-amd64-filebrowser.tar.gz \
    && tar -xzf /tmp/filebrowser.tar.gz -C /usr/local/bin \
    && chmod +x /usr/local/bin/filebrowser

VOLUME /data
WORKDIR /data

EXPOSE 8080

CMD ["filebrowser", "--noauth", "--port", "8080"]
