#!/bin/bash
#


# remove packages
sudo apt-get purge mysql-server mysql-common mysql-client

# remove database config settings and loggs
sudo rm -rvfi /var/lib/mysql /etc/mysql/ /var/log/mysql*

# reinstall mysql db server
sudo apt-get install mysql-client mysql-server mysql-common