FROM tomcat:9.0
LABEL maintainer="shamal indurkar"
ADD target/*.war /usr/local/tomcat/webapps/foodapp.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
