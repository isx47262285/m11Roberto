#! /bin/bash
/opt/docker/install.sh && echo "Ok install"
/usr/sbin/httpd
/usr/sbin/sshd
/usr/sbin/xinetd -dontfork && echo "xinetd OK"

