apt -y  update
apt install -y php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
apt -y install php-fpm
apt -y install curl
apt install nmap vim telnet mariadb-client php-mysql -y
DIR="/var/www/wordpress/";
#rm -rf wordpress/*
if [ "$(ls $DIR | wc -l)" -le 1 ]; then
    echo "empty, do something" > 0
    cp -r wp/* wordpress
    chown www-data:www-data /var/www/wordpress/
    chmod -R 755 /var/www/wordpress/
    sed -i 's/WP_DATABASE_NAME/'$WP_DATABASE_NAME'/g' wordpress/wp-config.php
    sed -i 's/WP_DATABASE_USER/'$WP_DATABASE_USER'/g' wordpress/wp-config.php
    sed -i 's/WP_DATABASE_PASSWORD/'$WP_DATABASE_PASSWORD'/g' wordpress/wp-config.php
    sed -i 's/WP_HOSTNAME/'$WP_HOSTNAME'/g' wordpress/wp-config.php
    #curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    #chmod +x wp-cli.phar
    # mv wp-cli.phar /usr/local/bin/wp
    # if [ "$(ls -l $DIRwp-config.php 2>/dev/null | wc -l)" -le 1 ]; then
    #     wp config create --dbname=$WP_DATABASE_NAME --dbuser=$WP_DATABASE_USER --dbhost=$WP_HOSTNAME --dbpass=$WP_DATABASE_PASSWORD --allow-root --path='/var/www/wordpress/' --skip-check
else
    echo "reading from cache" > 1
fi
#touch wordpress/wtf_bruh
service php7.3-fpm start
# php7.3
tail -f

# sed -i 's/$WP_DATABASE_NAME/'$WP_DATABASE_NAME'/g' wp-config.php