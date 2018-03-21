FROM centos:latest
MAINTAINER yugandhar


RUN yum -y install epel-release


RUN yum repolist


RUN yum -y install httpd 

EXPOSE 80

VOLUME /mnt/pipeline /var/www/html

RUN echo "httpd" >> /root/.bashrc

CMD ["/bin/bash"]
