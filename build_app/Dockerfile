FROM centos:centos6
MAINTAINER Etsuji Nakai

RUN yum -y install epel-release
RUN yum -y install git gcc python-devel python-crypto python-pip mysql-devel
WORKDIR /root
RUN git clone https://github.com/irixjp/openstack-sample-app.git
WORKDIR /root/openstack-sample-app
RUN git checkout v1.0
RUN pip install -r server-setup/requirements.txt

ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]
EXPOSE 5555
