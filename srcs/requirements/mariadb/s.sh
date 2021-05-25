mysql -u root -e "CREATE USER 'dude'@'%' IDENTIFIED BY 'notAWeeaakPassword'"
mysql -u root -e "CREATE DATABASE wordpress;use wordpress;source wordpress.sql;"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'hamza'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"

service mysql start
tail -f /var/log/lastlog