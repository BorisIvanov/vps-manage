#sudo yum -y install http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/postgresql94-libs-9.4.4-1PGDG.rhel7.x86_64.rpm
#sudo yum -y install http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/postgresql94-9.4.4-1PGDG.rhel7.x86_64.rpm
sudo yum -y install http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/postgresql94-server-9.4.4-1PGDG.rhel7.x86_64.rpm
sudo yum -y install http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/postgresql94-contrib-9.4.4-1PGDG.rhel7.x86_64.rpm

sudo yum -y install http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/postgis2_94-2.1.8-1.rhel7.x86_64.rpm
#sudo yum -y install postgresql94-server postgresql94-contrib

sudo /usr/pgsql-9.4/bin/postgresql94-setup initdb

sudo sed -i~ "s/#listen_addresses = 'localhost'/listen_addresses = '*' /" /var/lib/pgsql/9.4/data/postgresql.conf

# under root
cat <<EOF > /var/lib/pgsql/9.4/data/pg_hba.conf
local   all             all                                     trust
host    all             all             127.0.0.1/32            password
host    all             all             ::1/128                 password
host    all             all             0.0.0.0/0               password
EOF

sudo systemctl enable postgresql-9.4.service
sudo systemctl start postgresql-9.4.service

sudo /usr/bin/firewall-cmd --permanent --zone=public --add-port=5432/tcp
sudo systemctl restart firewalld.service