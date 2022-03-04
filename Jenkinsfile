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
    }
}
