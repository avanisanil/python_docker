pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                echo 'Cloning repository...'
            }
        }

        stage('Build') {
            steps {
                sh 'echo Build stage running'
            }
        }

        stage('Test') {
            steps {
                sh 'echo Test stage running'
            }
        }
    }
}
