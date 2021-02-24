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
                    docker.withRegistry( 'https://registry.hub.docker.com', 'dockerhub' ) {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('provision') {
            steps {
                script {
                    sh 'ansible-playbook ansible/playbook.yml -i ansible/hosts.yml'
                }
            }
        }
    }
}
