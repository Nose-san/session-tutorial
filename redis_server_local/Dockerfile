# Dockerfile for redis server

# (A)
FROM            docker.io/centos:latest
# (B)
MAINTAINER      nosey
# (C)
RUN yum -y install epel-release
# (D)
RUN yum install -y redis
# (E)
RUN sed -i s/bind\ 127\.0\.0\.1/\#bind\ 127\.0\.0\.1/g /etc/redis.conf
# (F)
RUN sed -i s/protected\-mode\ yes/protected\-mode\ no/g /etc/redis.conf
# (G)
RUN systemctl enable redis.service
# (H)
EXPOSE 6379