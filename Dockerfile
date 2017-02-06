FROM tomcat:8.0.41-jre8-alpine

MAINTAINER Hans G, Praqma

ENV ARTIFACTORY_VERSION 4.16.0

RUN apk add --update openssl && apk add --update unzip

RUN rm -rf webapps/

RUN wget -O artifactory.zip https://bintray.com/jfrog/artifactory/download_file?file_path=jfrog-artifactory-oss-${ARTIFACTORY_VERSION}.zip \
&& unzip -j artifactory.zip "artifactory-*/webapps/artifactory.war" -d webapps/

RUN mkdir -p /artifactory
ENV ARTIFACTORY_HOME /artifactory

WORKDIR /artifactory
