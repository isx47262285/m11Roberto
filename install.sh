#! /bin/bash
useradd pere
useradd marta
echo "pere" | passwd --stdin pere
echo "marta" | passwd --stdin marta
echo "@edt ASIX M11-SAD" > /var/www/index.html
/usr/bin/ssh-keygen -A
cp /opt/docker/xinetd.d/* /etc/xinetd.d/
cp /opt/docker/marta/ /var/spool/mail/marta
cp /opt/docker/pere/ /var/spool/mail/pere

