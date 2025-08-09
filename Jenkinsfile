pipeline {
    agent {
        docker {
            image 'node:16'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm '
            } 
        }
        stage('tests') {
            steps {
                sh 'npm test'
            }
        }
        stage('Deploy'){
            steps {
                sh 'npm run build'
            }
        }
    }
}