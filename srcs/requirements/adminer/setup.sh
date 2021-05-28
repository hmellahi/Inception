apt -y update
apt -y upgrade
 apt-get install -y wget adminer
 mkdir /usr/share/adminer
 wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php
 ln -s /usr/share/adminer/latest.php /usr/share/adminer/adminer.php
 a2enconf adminer.conf