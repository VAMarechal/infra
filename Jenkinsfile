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
            echo "Password: ${params.AWS_ACCESS_KEY_ID}"            
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
