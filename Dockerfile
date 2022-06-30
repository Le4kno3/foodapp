FROM tomcat:9.0
LABEL maintainer="takshil patil"
ADD ecom-website.war /usr/local/tomcat/webapps/ecom-website.war
EXPOSE 8088
CMD ["catalina.sh", "run"]
