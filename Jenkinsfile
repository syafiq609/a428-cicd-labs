pipeline {
    agent {
        docker {
            image 'node:16'
        }
    }
    stages {
        stage('Install dependencies') {
            steps {
                sh 'npm '
            } 
        }
        stage('Run tests') {
            steps {
                sh 'npm test'
            }
        }
        stage('Build app'){
            steps {
                sh 'npm run build'
            }
        }
    }
}