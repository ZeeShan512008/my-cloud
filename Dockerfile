FROM filebrowser/filebrowser

WORKDIR /srv

EXPOSE 80

CMD ["filebrowser", "-r", "/srv"]
