expect -c "
set timeout 10
spawn apt install -y mariadb-server
expect \"*** 50-server.cnf (Y/I/N/O/D/Z) \[default=N\] ? \"
send \"N\r\"
expect eof
"
