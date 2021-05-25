apt -y update
apt -y upgrade
apt install -y mariadb-server vim telnet
service mysql start
# mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'dude'@'%'  WITH GRANT OPTION";