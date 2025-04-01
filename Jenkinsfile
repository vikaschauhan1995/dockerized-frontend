pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch 'master', url: 'https://github.com/vikaschauhan1995/dockerized-frontend.git'
            }
        }
        stage('Run Deploy Script') {
            steps {
                sh 'chmod +x deploy.sh && ./deploy.sh' 
            }
        }
    }
    post {
        success {
            echo 'Deployment successful'
        }
        failure {
            echo 'Deployment failed'
        }
    }
}