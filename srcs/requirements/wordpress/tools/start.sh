DIR="/var/www/wordpress/";
if [ $(ls -A $DIR | wc -l) -le 3 ]; then
    echo "empty, do something" > 0
    cp -r wp/* wordpress
    chown www-data:www-data /var/www/wordpress/
    chmod -R 755 /var/www/wordpress/
    sed -i 's/WP_DATABASE_NAME/'$WP_DATABASE_NAME'/g' wordpress/wp-config.php
    sed -i 's/WP_DATABASE_USER/'$WP_DATABASE_USER'/g' wordpress/wp-config.php
    sed -i 's/WP_DATABASE_PASSWORD/'$WP_DATABASE_PASSWORD'/g' wordpress/wp-config.php
    sed -i 's/WP_HOSTNAME/'$WP_HOSTNAME'/g' wordpress/wp-config.php
else
    echo "reading from cache" > 1
fi

service php7.3-fpm start
service php7.3-fpm stop
/usr/sbin/php-fpm7.3 -F -R