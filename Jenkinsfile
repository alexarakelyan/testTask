pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    dockerImage = docker.build "alexpmbet/trg-python:staging"
                }
            }
        }
        stage('Run image') {
            steps {
                script {
                  dockerImage.withRun {c ->
                    sh './test-with-local-db'
                  }
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    sh "python3 hello_world.test.py"
                }
            }
        }
    }
}
