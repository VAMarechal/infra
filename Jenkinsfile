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
                sh 'echo "$AWS_ACCESS_KEY_ID "'
                sh 'echo "profile = $AWS_PROFILE"'
                sh "terraform apply --auto-approve"
            }
        }
    }
}
