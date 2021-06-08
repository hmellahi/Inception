apt -y update
apt -y upgrade
apt install -y mariadb-server vim telnet
apt install -y ufw iptables
ufw allow 3306
#service mysql start
# mysql -u root -e "CREATE USER 'dude'@'%' IDENTIFIED BY 'dude'"
# mysql -u root -e "CREATE DATABASE wordpress;use wordpress;source wp.sql;"
# mysql -u root -e "use wordpress;GRANT ALL PRIVILEGES ON * TO 'dude'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
# mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'dude'@'%'  WITH GRANT OPTION";