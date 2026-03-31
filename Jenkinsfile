pipeline {
    agent any

    stages {
        stage('Build Image') {
            steps {
                sh 'docker build -t myapp .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f mycontainer || true
                docker run -d -p 80:5000 --name mycontainer myapp
                '''
            }
        }
    }

    post {
        success {
            echo 'App is Live 🚀'
        }
    }
}
