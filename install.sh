#!/bin/bash

apt-get update

# install webserver
apt -y install nginx
cd
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
wget -O /etc/nginx/nginx.conf "https://raw.githubusercontent.com/RazVpn/v1/main/SSHOPEN/nginx.conf"
mkdir -p /home/vps/public_html
echo "<h1><center>AutoScriptVPS By RazVpn</center></h1>" > /home/vps/public_html/index.html
wget -O /etc/nginx/conf.d/vps.conf "https://raw.githubusercontent.com/RazVpn/v1/main/SSHOPEN/vps.conf"
/etc/init.d/nginx restart

echo "==INSTALL AKSES IP=="
#INSTALL AKSES
cd
cd /usr/bin
wget -O addip "https://raw.githubusercontent.com/RazVpn/reg/main/addip.sh"
wget -O delip "https://raw.githubusercontent.com/RazVpn/reg/main/delip.sh"
wget -O xp-ip "https://raw.githubusercontent.com/RazVpn/reg/main/xp-ip.sh"
wget -O im "https://raw.githubusercontent.com/RazVpn/reg/main/im.sh"

#PERMISSION
cd
chmod +x /usr/bin/addip
chmod +x /usr/bin/delip
chmod +x /usr/bin/xp-ip
chmod +x /usr/bin/im

cd /home
mkdr listip

#finishing
cd
clear
rm -f /root/install.sh
