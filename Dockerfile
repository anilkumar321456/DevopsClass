FROM ubuntu:latest
MAINTAINER maheshchidaanil
RUN mkdir /usr/local/tomcat
RUN apt update -y && apt install openjdk-8-jdk -y && apt install wget -y
RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.75/bin/apache-tomcat-8.5.75.tar.gz
RUN tar -xvzf apache-tomcat-8.5.75.tar.gz
RUN cp -r apache-tomcat-8.5.75/* /usr/local/tomcat/
COPY vprofile-v1.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh","run"]

