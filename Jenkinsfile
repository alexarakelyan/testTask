pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t alexpmbet/trg-python:latest .'
            }
        }
        stage('Push') {
            steps {
                sh 'docker push alexpmbet/trg-python:latest'
            }
        }

    }
}
