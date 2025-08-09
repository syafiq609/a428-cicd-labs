pipeline {
    agent {
        docker {
            image 'node:lts-bullseye-slim'
            args '-p 30000:30000'
        }
    }
        }
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm run build'
            }
        }
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy aplikasi (simulasi)...'
                // Kalau mau deploy beneran:
                // sh 'scp -r build/* user@server:/path/to/deploy'
            }
        }
        stage('End') {
            steps {
                echo 'Pipeline selesai.'
            }
        }
    }
}