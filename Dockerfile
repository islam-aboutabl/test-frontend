FROM nginx:1.23.2 as deploy
COPY index.html /usr/share/nginx/html
CMD sed -i "2 s/.*/listen $PORT ;/" /etc/nginx/conf.d/default.conf && nginx -g "daemon off;"
