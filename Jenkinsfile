pipeline {
    agent any

    stages {
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
        stage('Graph creation') {
            steps {
                sh "terraform graph > ${params.graph_file}"
                sh "dot -Tpng graph.dot -o ${params.graph_omg}"
                sh "aws s3 cp ./${params.graph_img} s3://terraform-buckt-shay-pub"
            }
        }
    }
}