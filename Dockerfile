FROM nginx:1.23.2 as deploy
COPY index.html /usr/share/nginx/html