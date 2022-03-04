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
touch Dockerfile
cat <<EOT>>Dockerfile
FROM tomcat
ADD foodapp.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
EXPOSE 8080
EOT
sudo docker build -t webimage:1.0 .
sudo docker container run -itd --name webserver -p 8080:8080 webimage:1.0'''
            }
        }
    }
}
