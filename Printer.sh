#!bin/bash

#Setup Printer Through HP Device Manager
#Turn off Printer and then change the driver form hpcups to Generic/PCL5e/pcl4d
#If printer does not print properly use Generic/PCL5/pcl3d at the cost of reduced print quality


yay -S cups cups-pdf hplip foomatic-db foomatic-db-engine foomatic-db-ppds foomatic-db-nonfree foomatic-db-nonfree-ppds system-config-printer
systemctl enable cups
sudo ufw allow 631/tcp && sudo ufw allow 5353/udp
