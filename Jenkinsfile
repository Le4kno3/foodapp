pipeline {
    agent any 

    triggers {
        pollSCM('* * * * *')
    }

    stages {
        stage('clean') {
    	    agent any
            steps {
                sh 'mvn clean'
                sh 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64'
            }
        }
        stage('compile') {
    	    agent any
            steps {
                sh 'mvn compile'
            }
        }
    	stage('test') {
    	    agent any
            steps {
                sh 'mvn test'             
            }
        }
        stage('package') {
    	    agent any
            steps {
                sh 'mvn package'             
            }
        }
    }
}
