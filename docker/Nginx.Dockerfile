FROM nginx

ADD docker/nginx/vhost.conf /etc/nginx/conf.d/default.conf
ADD docker/nginx/.htpasswd /etc/nginx/.htpasswd

WORKDIR /var/www/test-crud