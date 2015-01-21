# SQL Workshop VM

Vagrant file and provision shell script for setting up MySQL and Rstudio.

## Installation Instructions

# Windows and Mac

We are using Vagrant to build a virtual machine for this workshop.  Vagrant requires a provider (virtualbox) and a command line with ssh.

1. Virtualbox - download and install latest for your OS (4.3.20) https://www.virtualbox.org/wiki/Downloads
2. Download and install Vagrant (1.7.2) for your operating system: https://www.vagrantup.com/downloads.html
2. Install git
  * **Windows only** - install Git Bash  http://git-scm.com/download/win
  * **Mac only** - install Git http://git-scm.com/download/mac
3.  Open a terminal client. In Mac search in spotlight for 'terminal'.  In Windows, click Start and search for Git Bash.
4.  In the terminal client, navigate to where you want to do your work using 'cd <directory>' (e.g. 'cd Desktop' in windows).
5.  Type `git clone https://github.com/uc-data-services/sql-workshop-vm.git`. Alternatively, you can download and unzip the repository https://github.com/uc-data-services/sql-workshop-vm/archive/master.zip
6.  Change directories into sql-workshop-vm:  `cd sql-workshop-vm`
7.  Run `vagrant up` in the directory (get a cup of coffee this will take 5-10 min).
8.  After `vagrant up` finishes, test the installation by running the command `vagrant ssh`. If asked for a password, type "vagrant". This should take you to a new "vagrant" command prompt. 
9.  You should also be able to open a browser and navigate to http://localhost:8189/ to access RStudio. Use `vagrant` for both the username and password. 
9.  Type `exit` to return to your host operating system, then `vagrant suspend` to turn off the virtual machine.


# Linux

Just install the following packages in your distribution:

r-base-core libapparmor1 mysql-server

Download and install RStudio http://www.rstudio.com/products/rstudio/download/
