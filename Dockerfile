FROM filebrowser/filebrowser:latest

ENV FB_PORT=8080
EXPOSE 8080

CMD ["filebrowser", "--root", "/data", "--address", "0.0.0.0", "--port", "8080"]
