FROM debian:bullseye

RUN apt update && \
    apt install -y nginx && \
    apt clean

COPY nginx-config/default.conf /etc/nginx/sites-enabled/default

COPY nginx-config/index.html /var/www/html/demo/index.html

CMD nginx -g 'daemon off;'