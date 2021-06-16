DIR="/var/lib/mysql/wordpress/";
if ! [ "$(ls -A $DIR)" ]; then
    echo "rsss" > 1
    mkdir /var/lib/mysql
    mkdir /var/lib/mysql/mysql
    chown -R mysql:mysql /var/lib/mysql 
     mysql_install_db
    service mysql start
    # mysql -u root -e "CREATE USER 'dude'@'%' IDENTIFIED BY 'dude'"
    # mysql -u root -e "CREATE DATABASE wordpress;use wordpress"
    # mysql -u root -e "use wordpress;GRANT ALL PRIVILEGES ON * TO 'dude'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
    mysql -u root -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}'"
    mysql -u root -e "CREATE DATABASE ${WP_DATABASE_NAME};use ${WP_DATABASE_NAME}"
    mysql -u root -e "use ${WP_DATABASE_NAME};GRANT ALL PRIVILEGES ON * TO '${MYSQL_USER}'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
    mysql -u root wordpress < wp.sql
    # mysql -u root -e "UPDATE mysql.user SET Password=PASSWORD('waaatttt') WHERE User='root';FLUSH PRIVILEGES;"
    # echo $'[mysql]\nuser=root\npassword=waaatttt' > ~/.my.cnf
    # chmod 600 ~/.my.cnf
else
    echo "read from volume" > 1
fi
    #mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'dude'@'%'  WITH GRANT OPTION";
# service mysql stop
mysqld

#mysqldump -u dude -p YourDatabaseName > wantedsqlfile.sql
