#!/bin/bash
for i in `docker ps -a --format {{.Names}}`
do 
docker commit $i $i:`date +h%H`
docker save $i:`date +h%H` -o /root/images/$i:`date +h%H`
docker rmi $i:`date +h%H`
done
#schedulin script:
#vim /var/spool/cron/crontabs/root
#ََAdd this line : 0 * * * *

