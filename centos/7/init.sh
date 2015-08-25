adduser pyuser
passwd pyuser
gpasswd -a pyuser wheel

su - pyuser
sudo yum -y install