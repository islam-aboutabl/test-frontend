FROM nginx:1.23.2 as deploy
RUN sed -i "2 s/.*/listen $PORT ;/" /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html
