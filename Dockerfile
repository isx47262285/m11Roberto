FROM fedora:28
LABEL author="roberto@edt M11"
LABEL description="mailbox Server pop "
RUN dnf -y install telnet xinetd iproute iputils nmap uw-imap procps net-tools passwd  openssh-server 
RUN mkdir /opt/docker
#RUN mkdir /opt/docker/xinetd.d
#COPY xinetd.d/* /opt/docker/xinetd.d/
ADD * /opt/docker/
RUN chmod +x /opt/docker/startup.sh /opt/docker/install.sh
WORKDIR /opt/docker
CMD [ "/opt/docker/startup.sh" ]

