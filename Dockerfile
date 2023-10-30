FROM debian:bullseye

RUN apt update && \
    apt install -y nginx-server && \

RUN apt clean && \
    rm -rf /var/lib/apt/lists/*

COPY nginx-config/default.config /etc/nginx/sites-enabled/default

COPY nginx-config/index.html /var/www/html/demo/index.html

CMD nginx -g 'daemon off;'