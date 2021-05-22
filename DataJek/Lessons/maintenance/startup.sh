#!/bin/bash

mkdir -p /var/run/mysqld
chmod 777 -R /var/run/mysqld
chown -R mysql:mysql /var/lib/mysql /var/run/mysqld

# check if mysql is running before restarting it

/usr/bin/mysqld_safe &

# wait for mysql to start up
echo "Please wait for 3 seconds ..."
sleep 3
mysql -u root -Bse "DROP DATABASE IF EXISTS MovieIndustry;"