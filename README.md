# SQL Workshop VM

Vagrant file and provision shell script for setting up MySQL and Rstudio.

## Installation Instructions

# Windows and Mac

We are using Vagrant to build a virtual machine for this workshop.  Vagrant requires a provider (virtualbox) and a command line with ssh.

1. Virtualbox - download and install latest for your OS (4.3.20) https://www.virtualbox.org/wiki/Downloads
2. Download and install Vagrant (1.7.2) for your operating system: https://www.vagrantup.com/downloads.html
2. **Windows only** - install Git Bash  http://git-scm.com/downloads
3.  Open a terminal client. In Mac search in spotlight for 'terminal'.  In Windows, click Start and search for Git Bash.
4.  Navigate to where you want to do your work using 'cd <directory>' (e.g. 'cd Desktop' in windows).
5.  Type git clone https://github.com/uc-data-services/sql-workshop-vm.git or download and unzip the repository https://github.com/uc-data-services/sql-workshop-vm/archive/master.zip
6.  Change directories into sql-workshop-vm:  cd sql-workshop-vm
7.  Run 'vagrant up' in the directory (get a cup of coffee this will take 5-10 min).

# Linux

Just install the following packages in your distribution:

r-base-core libapparmor1 mysql-server

Download and install RStudio http://www.rstudio.com/products/rstudio/download/
