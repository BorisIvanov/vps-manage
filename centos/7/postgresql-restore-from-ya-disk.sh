#!/bin/bash
pip install YaDiskClient
wget https://raw.githubusercontent.com/BorisIvanov/vps-manage/master/centos/7/ya_download.py
python3.4 ya_download.py
unzip $YA_FILE_NAME.zip
pg_restore -U postgres -c -d $YA_DB_NAME tmp/$YA_FILE_NAME.dump