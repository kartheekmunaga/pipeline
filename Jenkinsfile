pipeline {

    agent any

    stages {

        stage('Build') {
            steps {
                sh '''
                    echo build
                '''
            }
        }

        stage('Test') {
            steps {
                sh 'echo test'
            }
        }

        stage('Push') {
            steps {
                sh 'echo Push'
            }
        }

        stage('Deploy') {
            steps {
                sh 'echo Deploy'
            }
        }
    }
}
