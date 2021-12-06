pipeline {
   agent any

   environment {
     SERVICE_NAME="nettokay"
     ORGANIZATION_NAME="wajaatshah-devops"
     REPOSITORY_TAG="${DOCKERHUB_USERNAME}/${SERVICE_NAME}:${BUILD_ID}"
   }

   stages {
      stage('Checkout SCM') {
         steps {
            cleanWs()
            git branch: 'develop', credentialsId: 'Github', url: "https://github.com/${ORGANIZATION_NAME}/${SERVICE_NAME}"
         }
      }
      stage('Build and Push Image') {
         steps {
            sh 'echo "Working Directory ---->"'
            sh 'pwd'
            sh 'cd /var/lib/jenkins'
            sh 'pwd'            
            sh 'ls'
            sh 'docker build -t ${REPOSITORY_TAG} .'
         }
      }

      stage('Run docker image') {
         steps {
           sh 'docker container run -d -p 80:80 ${REPOSITORY_TAG}'
         }
      }
   }
}