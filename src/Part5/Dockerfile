FROM alpine

RUN apk update \
	&& apk add --no-cache nginx nmap gcc spawn-fcgi fcgi fcgi-dev musl-dev; \
	addgroup nginx root

COPY nginx.conf /etc/nginx/nginx.conf
COPY web.c  /home/web/web.c
COPY web.sh /home/web/web.sh

WORKDIR /home/web

RUN rm -rf /var/lib/apt/lists; \
	chown -R nginx:nginx /home/web/; \
	chown -R nginx:nginx /var/run/; \
	touch /var/run/nginx.pid; \
	chown -R nginx:nginx /var/run/nginx.pid

USER nginx

ENTRYPOINT ["sh", "./web.sh"]
