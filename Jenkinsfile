pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = "ap-south-1"
    }

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/USERNAME/terraform-aws-infra.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh '''
                  terraform init \
                  -backend-config="bucket=terraform-dev-state"
                '''
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -var-file=terraform.tfvars'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -var-file=terraform.tfvars -auto-approve'
            }
        }
    }

    post {
        success {
            echo "✅ Infrastructure created successfully"
        }
        failure {
            echo "❌ Infrastructure creation failed"
        }
    }
}
