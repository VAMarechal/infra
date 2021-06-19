pipeline {
    agent any
    tools {
        terraform 'Terraform'
    }
   
    stages {
        stage('Terraform Init') {
          steps {
              sh 'echo "init stage"'
              // sh 'cd /home/ubuntu/terraform/Fristyle_Jenkins && terraform init'
            }
        }
        stage('Terraform Destroy') {
          steps {
              sh 'echo "destroy stage"'
              sh "cd /home/ubuntu/terraform/Fristyle_Jenkins && terraform destroy -auto-approve"
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'echo "plan stage"'
                sh "cd /home/ubuntu/terraform/Fristyle_Jenkins && terraform plan"
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'echo "apply stage"'
                sh "cd /home/ubuntu/terraform/Fristyle_Jenkins && terraform apply --auto-approve"
            }
        }
        stage('Ansible Run') {
            steps {
                sh 'echo "Ansible Run stage"'
                sh 'sleep 30'
                sh 'cd /home/ubuntu/jenkins/ansible/ && ansible-playbook playbook_1.yml'
            }
        }
    }
}
