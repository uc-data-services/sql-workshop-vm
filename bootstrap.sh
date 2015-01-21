#!/usr/bin/env bash

echo "Provisioning virtual maching for MySQL workshop"

apt-get update && apt-get dist-upgrade

#rstudio
echo "Installing R & RStudio"

apt-get install -y gdebi-core
apt-get install -y r-base-core
apt-get install -y libapparmor1
wget -q http://download1.rstudio.org/rstudio-0.98.1091-amd64.deb -O /tmp/rstudio-0.98.1091-amd64.deb

dpkg -i /tmp/rstudio-server-0.98.1091-amd64.deb

#mysql
echo "Preparing MySQL"

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get install -y mysql-server

cat << EOF | sudo tee -a /etc/mysql/conf.d/default_engine.cnf
[mysqld]
default-storage-engine = MyISAM
EOF

echo "Installing MySQL"

sudo service mysql restart

echo "You've been provisioned"
