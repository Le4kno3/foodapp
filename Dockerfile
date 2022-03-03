FROM tomcat:latest
LABEL maintainer="Shamal Indurkar"
ADD ./target/foodapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]

#-> Create a image for springboot webservice
# -->  Dockerfile
#  - -> docker image build -t <imagetagname> .

#-> run container by using custom image
# -> docker container run  --name <ecom-web-service> -p 8081:8081 -d <ecom-webservice>


#-> verify log 
#  -> docker container log <container-name>
