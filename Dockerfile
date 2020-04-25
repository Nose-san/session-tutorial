# Dockerfile for sample service using embedded tomcat server

# (A)
FROM centos:centos7
# (B)
MAINTAINER nosey

# (C)
RUN yum install -y \
    java-1.8.0-openjdk \
    java-1.8.0-openjdk-devel \
    wget tar iproute git

# (D)
RUN wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
# (E)
RUN sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
# (F)
RUN yum install -y apache-maven
# (G)
ENV JAVA_HOME /etc/alternatives/jre
# (H)
RUN git clone https://github.com/Nose-san/session-tutorial.git /usr/local/session-tutorial
# (I)
#RUN mvn install -f /usr/local/session-tutorial/pom.xml

# (J)
RUN cp /etc/localtime /etc/localtime.org
# (K)
RUN ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# (L)
EXPOSE 8080

# (M)
#CMD java -jar /usr/local/session-tutorial/target/session-tutorial-0.0.1-SNAPSHOT.jar
CMD /sbin/init