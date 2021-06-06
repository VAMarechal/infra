pipeline {
    agent any
    tools {
        terraform 'Terraform'
    }
    parameters {
        password(name: 'AWS_ACCESS_KEY_ID', defaultValue: 'SECRET', description: 'Enter a AWS_ACCESS_KEY_ID')
        password(name: 'AWS_SECRET_ACCESS_KEY', defaultValue: 'SECRET', description: 'Enter a AWS_SECRET_ACCESS_KEY')
    }
    stages {
        stage('Terraform Init') {
          steps {
            sh 'echo "init stage"'
                sh "terraform init"
            }
        }
        stage('Creds Init') {
          steps {
            sh "export AWS_ACCESS_KEY_ID=${params.AWS_ACCESS_KEY_ID}"           
            sh "export AWS_SECRET_ACCESS_KEY=${params.AWS_SECRET_ACCESS_KEY}" 
            sh "export AWS_PROFILE=default"  
            }
        }
         stage('Terraform Apply') {
            steps {
                sh 'echo "apply stage"'
                sh 'echo "$AWS_ACCESS_KEY_ID "'
                sh 'echo "profile = $AWS_PROFILE"'
                sh 'hostname'
                sh "terraform apply --auto-approve"
            }
        }
    }
}
