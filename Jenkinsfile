pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/avanisanil/python_docker.git'
            }
        }
        stage('Build Image') {
            steps {
                sh 'docker build -t myapp .'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d -p 5000:5000 myapp'
            }
        }
    }
}
