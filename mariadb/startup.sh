#! /bin/sh

echo ""
echo ""
echo "================================================================================"
echo "Welcome to the MariaDB SQL Server!"
echo "================================================================================"
echo "Here are a few important commands to manage your container."
echo ""
echo "  » Set initial database root password:"
echo "  $ docker exec XYZ mysqladmin -u root password 'new'"
echo ""
echo "  » Change database root password:"
echo "  $ docker exec XYZ mysqladmin -u root -p 'old' password 'new'"
echo ""
echo "  » Access MySQL CLI:"
echo "  $ docker exec -it XYZ mysql -u root -p"
echo ""
echo "Have fun! And don't forget to backup the /var/lib/mysql data directory. :-)"
echo "================================================================================"
echo ""
echo ""


echo "-------------------------------------------------------------------------------"
echo "Initializing Database Directory"
echo "-------------------------------------------------------------------------------"

chown -R mysql:mysql /var/lib/mysql
mysql_install_db


echo "-------------------------------------------------------------------------------"
echo "Starting Database Server"
echo "-------------------------------------------------------------------------------"

mysqld

# This point will never be reached
