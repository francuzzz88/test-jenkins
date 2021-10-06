pipeline {
    agent any

    stages {
        stage ("compile Stage"){
            steps{
                withMaven(maven: 'maven_3_8_3'){
                    sh 'mvn clean compile'
                }
            }
        }

        stage('test'){
            steps{
                withMaven(maven: ''){
                    sh 'mvn clean compile'
                }
            }
        }

        stage('Deploy'){
            steps{
                withMaven(maven: ''){
                    sh 'mvn clean deploy'
                }
            }
        }
    }
}