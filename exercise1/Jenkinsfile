pipeline {
    agent any

    stages {
        stage('Terraform init') {
            steps {
                sh '/var/jenkins_home/workspace/terraform_jenkins/exercise1/terraform init'
            }
        }
        stage('Terraform apply') {
            steps {
                sh '/var/jenkins_home/workspace/terraform_jenkins/exercise1/terraform apply --auto-approve'
            }
        }
    }
}