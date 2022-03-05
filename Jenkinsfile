pipeline {
    agent any 

    triggers {
        pollSCM('* * * * *')
    }

    stages {
        stage('clean') {
    	    agent any
            steps {
                sh 'sudo mvn clean'
            }
        }
        stage('compile') {
    	    agent any
            steps {
                sh 'sudo mvn compile'
            }
        }
    	stage('test') {
    	    agent any
            steps {
                sh 'sudo mvn test'             
            }
        }
        stage('package') {
    	    agent any
            steps {
                sh 'sudo mvn package'             
            }
        }
        stage('deploy'){
            agent any
            steps{
                sh '''rm -rf dockerimg
mkdir dockerimg
cd dockerimg
cp ../target/foodapp.war .
cp ../databases/test.sql .
cp ../databases/cart_db.sql .
touch Dockerfile
cat <<EOT>>Dockerfile
FROM tomcat:9.0
LABEL maintainer="shamal indurkar"
ADD foodapp.war /usr/local/tomcat/webapps/foodapp.war
ADD test.sql /usr/local/tomcat/webapps/test.sql
ADD cart_db.sql /usr/local/tomcat/webapps/cart_db.sql
RUN apt update
RUN apt install mariadb-server -y
RUN service mariadb start; mysql -e "create database test;"; mysql -e "create database cart_db;"
EXPOSE 8080
CMD ["catalina.sh", "run"]
EOT
sudo docker build -t webimage:1.0 .
if [ ! "$(sudo docker ps -q -f name='webserver')" ]; then
    if [ "$(sudo docker ps -aq -f status=exited -f name='webserver')" ]; then
        sudo docker rm webserver
        sudo docker rmi webimage
    fi
    sudo docker container run -itd --name webserver -p 8888:8080 webimage:1.0
fi'''
            }
        }
    }
}
