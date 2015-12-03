FROM docker-registry.bd1.udcredit.com:5000/centos:centos7.1.1503

MAINTAINER Vincent Gu <gucj@udcredit.com>

# use Baidu BCM yum repo
COPY yum.repos.d/* /etc/yum.repos.d/

RUN yum reinstall -y glibc-common && yum clean all \
  && unlink /etc/localtime \
  && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8

CMD ["/bin/sh"]
