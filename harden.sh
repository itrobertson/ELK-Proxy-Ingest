#!/bin/bash
sudo systemctl restart firewalld; 
semanage port -a -t http_port_t -p tcp 5601

sudo firewall-cmd --add-service=http;
sudo firewall-cmd --add-service=https;
sudo firewall-cmd --runtime-to-permanent;
sudo iptables -I INPUT -p tcp -m tcp --dport 80 -j ACCEPT
sudo iptables -I INPUT -p tcp -m tcp --dport 443 -j ACCEPT
sudo yum install epel-release -y;
sudo yum install certbot-nginx -y;
#sudo certbot --nginx -d $(hostname) -d $(hostname);
sudo certbot --nginx -d 127.0.0.1 -d 127.0.0.1;
echo "DONE!";
###
