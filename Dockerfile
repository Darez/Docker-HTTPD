FROM centos:centos7

MAINTAINER Darez

RUN yum -y update && yum clean all
RUN yum -y install httpd php php-pdo php-mysql php-pgsql && yum clean all

COPY httpd.conf /etc/httpd/conf/httpd.conf
COPY php.ini /etc/php.ini

EXPOSE 80

COPY run.sh /run.sh

RUN chmod +x /run.sh

CMD ["/run-httpd.sh"]
