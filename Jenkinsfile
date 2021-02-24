pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t alexpmbet/trg-python:latest .'
            }
        }
        stage('Test') {
            steps {
                sh 'docker push alexpmbet/trg-python:latest'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
