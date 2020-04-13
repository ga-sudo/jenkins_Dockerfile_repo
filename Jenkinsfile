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
                docker rmi $(docker images -q -f dangling=true)
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
