#!/bin/bash
pip install YaDiskClient
wget https://raw.githubusercontent.com/BorisIvanov/vps-manage/master/centos/7/ya_download.py
python ya_download.py
unzip $YA_DST.zip
pg_restore -U postgres -c -d $YA_DB_NAME $YA_DST.dump