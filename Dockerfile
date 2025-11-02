FROM filebrowser/filebrowser:scratch

VOLUME /srv
EXPOSE 8080

ENTRYPOINT ["/filebrowser"]
