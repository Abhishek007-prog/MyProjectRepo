pipeline {
    agent{
        docker {image 'nginx:latest'}
    }

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t nginx:v1 .'
            }
        }
    }
}
