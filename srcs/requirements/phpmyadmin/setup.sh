DIR = "/usr/share/phpmyadmin";
if ! [ "!$(ls -A $DIR)" ]; then
    apt update  -y
    apt upgrade -y
    apt install wget -y
    wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz 
    tar -xvf phpMyAdmin-latest-all-languages.tar.gz 
    rm -rf phpMyAdmin-latest-all-languages.tar.gz 
    mkdir  /usr/share/phpmyadmin
    mv phpMyAdmin-5.1.1-all-languages/* /usr/share/phpmyadmin
    chown -R www-data:www-data /usr/share/phpmyadmin 
    COPY config.inc.php /usr/share/phpmyadmin/config.inc.php
else
    echo "reading from cache" >> 1
fi
tail -f