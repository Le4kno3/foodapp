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
						sh 'sudo mvn sonar:sonar'
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
