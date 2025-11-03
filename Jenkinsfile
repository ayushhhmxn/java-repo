pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'javac src/main/java/HelloWorld.java'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def image = docker.build("java-hello:${env.BUILD_NUMBER}")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh "docker run --rm java-hello:${env.BUILD_NUMBER}"
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
