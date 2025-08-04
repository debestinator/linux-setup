# Printer Setup For HP LaserJet 1320
### 1. Install Required Drivers

- `yay -S cups cups-pdf hplip foomatic-db foomatic-db-engine foomatic-db-ppds foomatic-db-nonfree foomatic-db-nonfree-ppds system-config-printer`

### 2. Enable Cups
- Enable Cups Service `systemctl enable cups`
- Allow Cups Through Firewall `sudo ufw allow 631/tcp && sudo ufw allow 5353/udp`

### 3. Printer Setup
- Setup Printer Through HP Device Manager
- Turn off Printer and then change the driver form hpcups to Generic/PCL5e/pcl4d
#### If Printer does not work or print properly
- If printer does not print properly use Generic/PCL5/pcl3d
### 4. Enjoy Working Printer!
  
