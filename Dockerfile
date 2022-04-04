FROM tomcat:9.0
LABEL maintainer="takshil patil"
ADD foodapp.war /usr/local/tomcat/webapps/foodapp.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
