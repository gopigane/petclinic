FROM tomcat
MAINTAINER ganesh
RUN apt-get update -y
WORKDIR /usr/local/tomcat

ADD ./target/*.jar /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]
