pipeline{
    agent any

    stages{
        stage('Checkout'){
            steps{
                git branch: main url: 'git@github.com:garlicmunk/jenkins-app.git'
            }
        }

        stage('Build'){
            steps{
                sh 'echo "Building Application..."'
            }
        }

        stage('Test'){
            steps{
                sh 'echo "Running Tests..."'
            }
        }

        stage('Deploy'){
            steps{
                sh 'echo "Deploying Application..."'
            }
        }
    }
}