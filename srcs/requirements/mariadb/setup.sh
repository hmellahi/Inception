apt -y update
apt install -y mariadb-server
service mysql start
mysql -u root -e "CREATE USER 'hamza'@'localhost' IDENTIFIED BY 'notAWeeaakPassword'"
mysql -u root -e "CREATE DATABASE wordpress;use wordpress;"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO hamza@localhost; FLUSH PRIVILEGES;"