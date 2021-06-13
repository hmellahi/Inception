apt -y  update
apt install -y php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
apt -y install php-fpm
apt -y install curl
service php7.3-fpm start
apt install nmap vim  mariadb-client php-mysql -y
DIR="/var/www/wordpress";
rm -rf wordpress/*
if ! [ "$(ls -A $DIR)" ]; then
    echo "empty, do something" > 0
    wget https://wordpress.org/latest.tar.gz
    tar -xvf latest.tar.gz
    # mv wp/ wordpress/
    chown www-data:www-data /var/www/wordpress/
    chmod -R 755 /var/www/wordpress/
else
    echo "reading from cache" > 1
fi
# service php7.3-fpm start
php7.3
# tail -f
