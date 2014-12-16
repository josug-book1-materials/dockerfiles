FROM centos:centos6
MAINTAINER Etsuji Nakai

RUN yum -y install epel-release; \
    yum -y install git gcc python-devel python-crypto python-pip mysql-devel
RUN cd /root; \
    git clone https://github.com/josug-book1-materials/sample-app.git; \
    cd /root/sample-app; \
    git checkout v1.0; \
    pip install -r server-setup/requirements.txt

ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]
EXPOSE 5555
