pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/jennifermia/auto21.git'
            }
        }
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
        stage('newman') {
             steps {
                 sh 'newman run postman_labb_postman_collection.json --environment postman_labb_environment.postman_environment.json --reporters junit'
        }
        post {
             always {
                 junit '**/*xml'
             }
        }
    }
}
