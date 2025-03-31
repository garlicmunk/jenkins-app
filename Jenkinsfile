pipeline{
    agent any

    environment{
        IMAGE_NAME = 'myapp'
        IMAGE_TAG = 'latest'
        DOCKER_USER = 'bhargavenu'
        DOCKER_CREDS_ID = 'docker-hub-credentials'
    }

    stages{
        stage('Checkout'){
            steps{
                checkout scm
            }
        }

        stage('Build App'){
            steps{
                sh 'echo "Building App..."'
                sh 'npm install'
            }
        }

        stage('Build Docker Image'){
            steps{
                sh "docker build -t ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG} ."
            }
        }

        stage('Push Docker Image'){
            steps{
                withDockerRegistry([credentialsId: DOCKER_CREDS_ID, url: '']){
                    sh "docker push ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}"
                }
            }
        }

        stage('Deploy Container'){
            steps{
                sh "docker run -d -p 3000:3000 ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}"
            }
        }
    }
}