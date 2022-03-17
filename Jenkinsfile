pipeline {
    agent any
    stages {

        stage('Build') {
            steps {
                sh "mvn compile"
            }
        }
        stage('Test') {
            steps {
                sh "mvn test"
            }
            post {
                always {
                    junit '**/TEST*.xml'
                }
            }
        }

        stage('newman') {
             steps {
                   sh 'newman run Labb3_Juhee_postman_collection.json --environment Labb3_Juhee_postman_environment.json --reporters junit'
             }
             post {
                 always {
                     junit '**/*xml'
                 }
             }
        }
    }
}