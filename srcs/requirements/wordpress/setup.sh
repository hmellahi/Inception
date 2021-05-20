apt -y  update
apt install -y php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
#service restart nginx
mkdir /var/www/wordpress