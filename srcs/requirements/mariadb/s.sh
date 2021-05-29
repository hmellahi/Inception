service mysql start
mysql -u root -e "CREATE USER 'dude'@'%' IDENTIFIED BY 'dude'"
mysql -u root -e "CREATE DATABASE wordpress;use wordpress;source wp.sql;"
mysql -u root -e "use wordpress;GRANT ALL PRIVILEGES ON * TO 'dude'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
#mysql -h db -u dude -p wordpress