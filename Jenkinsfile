pipeline {
    agent any
    //tools {
    //    nodejs "default"
    //}
    
    stages {
        stage('build') {
            steps {
                sh 'npm install'
                sh 'npm run build'
			}
        }
		stage('test') {
			steps {
				sh 'npm test'
			}
		}
		stage('package') {
			steps {
				sh 'docker build -t registry.local:8443/example:latest .'
				sh 'docker push registry.local:8443/example:latest'
			}
		}
		stage('deploy') {
			steps {
				sh 'docker --context ssh-box run -d --rm -p 80:80 registry.local:8443/example:latest'
			}
		}
    }
}
