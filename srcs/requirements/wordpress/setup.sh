# apt -y  update
# apt install -y php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
#service restart nginx
# chown -R www-data:www-data wordpress \
# find wordpress/ -type d -exec chmod 750 {} \
# find wordpress/ -type f -exec chmod 640 {} \
service php7.3-fpm start
apt install nmap