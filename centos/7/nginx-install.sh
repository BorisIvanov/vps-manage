sudo yum -y install nginx
sudo systemctl start nginx
sudo systemctl enable nginx


sudo /usr/bin/firewall-cmd --zone=public --add-service=http # Opens port now
sudo /usr/bin/firewall-cmd --permanent --zone=public --add-service=http # Makes change persistent
sudo firewall-cmd --permanent --zone=public --add-service=https

sudo usermod -a -G *user* nginx