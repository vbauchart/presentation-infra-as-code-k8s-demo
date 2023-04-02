FROM alpine

RUN apk add nginx

COPY nginx-config/default.conf /etc/nginx/http.d/default.conf

COPY nginx-config/index.html /var/www/localhost/htdocs/index.html

CMD nginx -g 'daemon off;'