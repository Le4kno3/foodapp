FROM tomcat
LABEL maintainer="shamal indurkar"
RUN mv webapps webapps2
RUN mv webapps.dist webapps
ADD target/*.war /usr/local/tomcat/webapps/foodapp.war
ADD tomcat-context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 8080
CMD ["catalina.sh", "run"]
ADD foodapp-context.xml /usr/local/tomcat/webapps/foodapp/META-INF/context.xml
