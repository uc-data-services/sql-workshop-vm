#!/usr/bin/env bash

echo "Provisioning virtual maching for SQL workshop"

apt-get update && apt-get dist-upgrade

#rstudio
echo "Installing R & RStudio"

apt-get install gdebi-core -y > /dev/null
#wget -q http://cran.stat.ucla.edu/bin/linux/ubuntu/precise/r-base_3.1.0-1precise0_all.deb -O /tmp/r-base3.deb
#gdebi --non-interactive r-base2.deb

apt-get install r-base-core -y > /dev/null
apt-get install libapparmor1 -y > /dev/null
apt-get install libmysqlclient-dev -y -> /dev/null

wget -q http://download2.rstudio.org/rstudio-server-0.98.1091-i386.deb -O /tmp/rstudio-server-0.98.1091-i386.deb
wget -q http://cran.cnr.berkeley.edu/src/contrib/DBI_0.3.1.tar.gz -O /tmp/DBI_0.3.1.tar.gz
wget -q http://cran.cnr.berkeley.edu/src/contrib/RMySQL_0.10.1.tar.gz -O /tmp/RMySQL_0.10.1.tar.gz

gdebi --non-interactive /tmp/rstudio-server-0.98.1091-i386.deb > /dev/null

#mysql
echo "Preparing MySQL"

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
apt-get install mysql-server -y > /dev/null

cat << EOF | sudo tee -a /etc/mysql/conf.d/default_engine.cnf
[mysqld]
default-storage-engine = MyISAM
EOF

echo "Installing MySQL"

sudo service mysql restart


echo "INstalling some R packages"

chmod -R 777 /usr/lib/R/library
chmod -R 777 /usr/share/R/doc

R CMD INSTALL /tmp/DBI_0.3.1.tar.gz
R CMD INSTALL /tmp/RMySQL_0.10.1.tar.gz

echo "You've been provisioned"
echo "Type vagrant ssh to enter the VM."
