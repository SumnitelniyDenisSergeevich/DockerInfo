gcc web.c -lfcgi -o web
spawn-fcgi -p 8080 ./web
service nginx restart
/bin/bash