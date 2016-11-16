#!/bin/bash
#

sudo apt-GET INSTALL mysql
sudo apt-get install libmysqlclient-dev

pip INSTALL mysql-python



sudo /etc/init.d/mysql STOP
sudo  mysqld_safe -skip-networking -skip- GRANT - TABLES &

# NOTA: En este momento cualquiera podrá tener acceso a mysql, por lo que no
# estaría de más usar también la opción

mysql -u root
FLUSH PRIVILEGES;

# method 1
SET PASSWORD FOR root@'localhost' = PASSWORD ('root');

UPDATE mysql.user
SET password = PASSWORD('root')
WHERE user = 'root';


# method 2
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('root');
UPDATE mysql.user SET password=PASSWORD('root') WHERE User='root';

FLUSH PRIVILEGES;


sudo /etc/init.d/mysqld stop
sudo /etc/init.d/mysqld start



sudo mysqladmin password  [new_pass]