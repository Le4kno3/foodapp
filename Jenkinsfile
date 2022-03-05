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
cp ../Dockerfile .
sudo docker build -t myapp .
sudo docker run -d -p 8888:8080 myapp'''
            }
        }
    }
}
