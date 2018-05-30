FROM centos/systemd

RUN yum -y update ; yum -y install epel-release; yum -y install nginx; yum clean all; systemctl enable nginx

EXPOSE 80

CMD ["/usr/sbin/init"]
