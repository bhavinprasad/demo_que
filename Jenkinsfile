pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                script {
                    sh 'git clone https://github.com/bhavinprasad/demo_que.git'
                }
            }
        }

        stage('Run Python Script') {
            steps {
                script {
                    sh 'python abc.py'
                }
            }
        }
    }
}
