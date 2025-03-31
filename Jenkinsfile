pipeline{
    agent any

    stages{
        stage('Checkout'){
            steps{
                git branch: 'main', url: 'git@github.com:garlicmunk/jenkins-app.git'
            }
        }

        stage('Build'){
            steps{
                sh 'echo "Building Application..."'
                sh 'mkdir -p output && echo "Artifact file" > output/build.txt'
            }
        }

        stage('Archive'){
            steps{
                sh 'echo "Archiving old artifacts..."'
                archiveArtifacts artifacts: 'output/*.txt', fingerprint: true
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