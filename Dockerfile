FROM ubuntu:12.04

MAINTAINER Andrey Popelo andrey@popelo.com


# update packages
RUN apt-get -y update
RUN apt-get -y upgrade

# Install Oracle Java 7
RUN apt-get -y install python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get -y update
RUN echo "oracle-java7-installer  shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections
RUN apt-get -y install oracle-java7-installer
