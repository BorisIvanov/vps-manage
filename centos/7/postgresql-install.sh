#sudo yum -y install http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/postgresql94-libs-9.4.4-1PGDG.rhel7.x86_64.rpm
#sudo yum -y install http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/postgresql94-9.4.4-1PGDG.rhel7.x86_64.rpm
sudo yum -y install http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/postgresql94-server-9.4.4-1PGDG.rhel7.x86_64.rpm
sudo yum -y install http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/postgresql94-contrib-9.4.4-1PGDG.rhel7.x86_64.rpm
#sudo yum -y install postgresql94-server postgresql94-contrib

sudo /usr/pgsql-9.4/bin/postgresql94-setup initdb
sudo systemctl enable postgresql-9.4.service
sudo systemctl start postgresql-9.4.service