pipeline {
    agent any

    stages {
        stage('Build') {
            steps {

             script {
                    dockerImage = docker.build "alexpmbet/trg-python:latest"
                }
            }
        }
        stage('Push') {
            steps {
                script {
                    docker.withRegistry( 'alexpmbet/trg-python', 'dockerhub' ) {
                        dockerImage.push()
                    }
                }
            }
        }

    }
}
