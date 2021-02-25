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
                    sh "docker-compose up -d"
                  }
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    try {
                        sh "python3 hello_world.test.py"
                    } catch (err) {
                        catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                            echo err.getMessage()
                        }
                    }
                }
            }
        }
        stage('shut down image') {
            steps {
                script {
                    sh "docker-compose down"
                }
            }
        }
    }
}
