pipeline {
    agent any
    stages {
        stage('listing all docker images') {
            steps {
                sh '''
                docker image ls
                '''
                }
            }
        stage('Deleting Redundant images'){
            steps{
                sh '''
                docker image prune -af
                '''
                }
            }
        stage('listing remaining docker images') {
            steps {
                sh '''
                docker image ls
                '''
                }
            }
        }
    }
