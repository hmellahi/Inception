DIR="/var/www/wordpress";
if ! [ "$(ls -A $DIR)" ]; then
    echo "empty, do something" > 0
    apt -y  update
    apt install -y php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
    apt -y install php-fpm
    apt -y install curl
    mv wp/* wordpress/
    service php7.3-fpm start
    apt install nmap vim  mariadb-client php-mysql -y
    chown www-data:www-data /var/www/wordpress/
    chmod -R 755 /var/www/wordpress/
else
    echo "reading from cache" > 1
fi

#php7.3
tail -f