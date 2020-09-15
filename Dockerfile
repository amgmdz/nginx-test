FROM nginx:latest
COPY magento.conf /etc/nginx/conf.d/
COPY nginx.conf.sample /etc/nginx/conf.d/
COPY --from=image-registry.openshift-image-registry.svc:5000/testing/php-fpm:latest /var/www/html/magento /var/www/html/magento
