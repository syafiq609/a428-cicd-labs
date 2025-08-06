pipeline {
    agent {
        docker {
            image 'node:16'
        }
    }
    stages {
        stage('Install dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Run tests') {
            steps {
                sh 'npm test'
            }
        }
    }
}