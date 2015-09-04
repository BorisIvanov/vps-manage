#!/bin/bash
systemctl enable firewalld
systemctl start firewalld

adduser pyuser
passwd pyuser
gpasswd -a pyuser wheel

su - pyuser
sudo yum -y install