pipeline {
    agent any
    stages {
        stage ('compile Stage') {
            steps {
                withMaven(maven: 'maven_3.8.3') {
                    sh 'mvn clean compile'
                }
            }
        }
    }
}