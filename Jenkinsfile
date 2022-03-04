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
