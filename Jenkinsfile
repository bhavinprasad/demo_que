pipeline{
        agent any
        environment{

                stages{

                        stage('first'){

                                        sh ' git clone https://github.com/bhavinprasad/demo_que.git'
                                }
                        stage ('second'){

                                sh 'python abc.py'
}

stage('Build Docker Image') {
      steps {
        script {
          try {
            docker.build("DEMO_QUE:1.0")
          } catch (Exception e) {
            echo "failed to clone the repo ${e.message}"
            error "failed to clone"
          }
        }
    }
    }
    stage('Push To DockerHub') {
      steps {
        script {
          try {
            withCredentials([usernamePassword(credentialsId: '101', usernameVariable: 'bhavinprasad', passwordVariable: 'Password@1')]) {
              sh """
              docker login -u "bhavinprasad" -p "Password@1"
              docker push DEMO_QUE:1.0
              """

            }
          } catch (Exception e) {
            echo "failed to push the dockerimage ${e.message}"
            error "failed to push the Docker image"
          }
        }
      }
    }
  }
}
}
