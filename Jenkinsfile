pipeline {
    agent any 

    triggers {
        pollSCM('* * * * *')
    }

    stages {
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
