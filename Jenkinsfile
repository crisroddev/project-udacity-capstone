pipeline {
     agent any
     stages {
         stage('Build') {
             steps {
                 sh 'echo "Building"'
             }
         }
         stage('Lint HTML') {
              steps {
                  sh 'tidy -q -e *.html'
              }
         }
         stage('Build Docker Image') {
              steps {
                  sh 'docker build -t capstone-project-cloud-devops .'
              }
         }
         stage('Push Docker Image') {
             steps {
                withDockerRegistry([url: "", credentialsId: "docker-hub"]) {
                      sh "docker tag capstone-project-cloud-devops crisroddev/capstone-project-cloud-devops"
                      sh 'docker push crisroddev/capstone-project-cloud-devops'
             }
            }
         }
         stage('Deploying') {
             steps {
                 echo 'Deploying to AWS'
                 withAWS(credentials: 'capstone', region: 'us-east-1') {
                     sh 'echo "Uploading to AWS"'
                     s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file:'index.html',  bucket:'jenkins-casptone-udacity')
                 }
             }
         }
    }
}         