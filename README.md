# SQL Workshop VM 

Vagrant file and provision shell script for setting up MySQL and Rstudio. 

## Installation Instructions 

We are using Vagrant to build a virtual machine for this workshop.  Vagrant requires a provider (virtualbox) and a command line with ssh. 

1. Virtualbox https://www.virtualbox.org/wiki/Downloads - download and install latest for your OS
2. Download and install Vagrant for your operating system: https://www.vagrantup.com/downloads.html
2. **Windows only** - install Git Bash  http://git-scm.com/downloads 
3.  Open a terminal client. In Mac search in spotlight for 'terminal'.  In Windows, click Start and search for git bash. 
4.  Navigate to where you want to do your work using 'cd <directory>' (e.g. 'cd Desktop' in windows).
5.  Type git clone https://github.com/uc-data-services/sql-workshop-vm.git
6.  Change directories into sql-workshop-vm:  cd sql-workshop-vm
7.  Run 'vagrant up' in the directory (get a cup of coffee this will take 5-10 min).
