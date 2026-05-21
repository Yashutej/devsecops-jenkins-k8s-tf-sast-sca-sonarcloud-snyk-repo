pipeline {
  agent any
  tools { 
        maven 'Maven_3_8_4'  
    }
   stages{
    stage('CompileandRunSonarAnalysis') {
            steps {	
		sh 'mvn clean verify sonar:sonar -Dsonar.projectKey=buggywebapp-devsecops -Dsonar.organization=buggywebapp-devsecops -Dsonar.host.url=https://sonarcloud.io -Dsonar.token=1aa2cb0be1d99fd77a17d5f6f132a00d4e103556'
			}
    

	
    }		
  }
}
