FROM nginx:latest
COPY magento.conf /etc/nginx/conf.d/
COPY nginx.conf.sample /etc/nginx/conf.d/
COPY --from=php-fpm:latest /var/www/html/magento /var/www/html/magento
