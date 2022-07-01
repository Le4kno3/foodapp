pipeline {
	agent any 
	
	triggers {
		pollSCM('* * * * *')
	}
	
	stages {
		stage('Quality Gate Statuc Check'){
			steps{
				script{
					//this will export the result/reports to sonarqube
					withSonarQubeEnv(credentialsId: '1'){
						sh 'mvn sonar:sonar -Dsonar.host.url=http://192.168.1.11:9000 -Dsonar.login=squ_7e503d3972354f7eb1966a1d99d2b6523f1a9af9'
					}
					//
					timeout(time: 1, unit: 'HOURS'){
						def qg = waitForQualityGate()
						if(qg.status != 'OK'){
							error "Pipeline aborted due to quality gate failure: ${qg.status}"
						}
					}
					sh 'sudo mvn clean install'
				}
			}
		}
	}
}
