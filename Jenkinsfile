pipeline {
    agent any
    tools {
        terraform 'Terraform'
    }
   
    stages {
        stage('Terraform Init') {
          steps {
              sh 'echo "init stage"'
              sh 'cd /home/ubuntu/terraform/Fristyle_Jenkins && ls -la'
              // sh "terraform init"
            }
        }
        stage('Terraform Destroy') {
          steps {
              sh 'echo "destroy stage"'
              sh "chdir /home/ubuntu/terraform/Fristyle_Jenkins && terraform destroy -auto-approve"
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'echo "plan stage"'
                // sh 'echo "$AWS_ACCESS_KEY_ID "'
                // sh 'echo "profile = $AWS_PROFILE"'
                // sh 'hostname'
                sh "chdir /home/ubuntu/terraform/Fristyle_Jenkins && terraform plan"
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'echo "apply stage"'
                // sh "terraform apply --auto-approve"
            }
        }
    }
}
