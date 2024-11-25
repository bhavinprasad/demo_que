pipeline {
    agent any

    stages {
       
        stage('Clone Repository') {
            steps {
                 cleanWs()
                script {
                    // Clone the GitHub repository
                    sh 'git clone https://github.com/bhavinprasad/demo_que.git'
                }
            }
        }

        stage('Run Python Script') {
            steps {
                script {
                    // Run the Python script (abc.py)
                    sh 'python demo_que/abc.py'
                }
            }
        }
    

stage('Build Docker Image') {
      steps {
        script {
          try {
            docker.build("demo_que1:1.0")
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
              docker push demo_que1:1.0
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

