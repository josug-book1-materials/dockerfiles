FROM centos:centos6
MAINTAINER Etsuji Nakai

RUN yum -y install mysql-server
ADD my.cnf /etc/my.cnf
RUN service mysqld start; \
    mysql -u root -e "create database sample_bbs default character set utf8;"; \
    mysql -u root -e "grant all on sample_bbs.* to user@'%' identified by 'password'; flush privileges;"; \
    mysql -u root -e "grant all on sample_bbs.* to user@localhost identified by 'password'; flush privileges;"

ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]
EXPOSE 3306
