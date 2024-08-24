FROM nginx:latest

USER root

RUN apt-get update
RUN apt-get install -y gcc spawn-fcgi libfcgi-dev

COPY nginx.conf /etc/nginx/nginx.conf
COPY web.c  /home/web/web.c
COPY web.sh /home/web/web.sh

WORKDIR /home/web

ENTRYPOINT ["sh", "./web.sh"]
