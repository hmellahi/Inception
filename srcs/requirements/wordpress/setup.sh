apt -y  update
apt install -y php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
apt -y install php-fpm
apt -y install curl
apt install nmap vim telnet mariadb-client php-mysql -y
DIR="/var/www/wordpress";
#rm -rf wordpress/*
if [ "$(ls $DIR | wc -l)" -le 1 ]; then
    echo "empty, do something" > 00
    # wget https://wordpress.org/latest.tar.gz
    # tar -xvf latest.tar.gz
    cp -r wp/* wordpress
    chown www-data:www-data /var/www/wordpress/
    chmod -R 755 /var/www/wordpress/
else
    echo "reading from cache" > 1
fi
#touch wordpress/wtf_bruh
service php7.3-fpm start
#php7.3
tail -f
