pipeline {
    agent any
    tools {
        terraform 'Terraform'
    }
    stages {
        stage('Terraform Init') {
          steps {
            sh 'echo "init stage"'
                sh "terraform init"
            }
        }
         stage('Terraform Apply') {
            steps {
                sh 'echo "apply stage"'
                sh "terraform apply --auto-approve"
            }
        }
    }
}
