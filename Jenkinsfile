pipeline {
    agent any
    stages {
        stage ('compile Stage') {
            steps {
                withMaven(maven: 'maven') {
                    sh 'mvn clean compile'
                }
            }
        }

        stage('test'){
            steps{
                withMaven(maven: 'maven'){
                    sh 'mvn test'
                }
            }
        }

        stage('install'){
            steps{
                withMaven(maven: 'maven'){
                    sh 'mvn package'
                }
            }
        }

        /* stage('docker_build'){
            steps{
                sh 'docker build -t francuzzz88/jenkins_test:0.1 .'
            }
        } */

    }
}