pipeline {
    
    environment
    {
        GITHUB_CREDS = credentials('git-cred')
        IMAGE = 'george1998x/instabug-goviolin'
        DOCKERHUB_CREDS = credentials('docker-cred')
        DOCKERHUB_USER = "george1998x"
        K8S_DEPLOYMENT_FILE = "kub_deploy.yaml"
    }
    agent any
    stages{
        stage('Checkout Repo'){
            steps{
                git credentialsId: '${GITHUB_CREDS}', url: 'https://github.com/GeorgeKhalifa/GoViolin-JenkinsPipeLine'    
            }
            
            
        }
        stage('Build Docker Image'){
            steps{
                script{
                    try{
                        sh "docker build -t ${IMAGE} ."
                        echo "BUILD SUCCESS"
                         //mail bcc: '', body: '', cc: '', from: '', replyTo: '', subject: '', to: 'georgedevelop2017@gmail.com'
                    }catch(all){
                        echo 'ERROR OCCURED'
                         //mail bcc: '', body: '', cc: '', from: '', replyTo: '', subject: '', to: 'georgedevelop2017@gmail.com'
                    }
                }
            }
        }
        stage("Push Docker Image"){
            steps{
                script{
                    try{
                        withCredentials([string(credentialsId: 'docker-pwd', variable: 'docker_hub_pass')]) {
                            sh "docker login -u ${DOCKERHUB_USER} -p ${docker_hub_pass}"
                        }
                        sh "docker push ${IMAGE}:latest"
                        echo "PUSH IMAGE DONE"
                         //mail bcc: '', body: '', cc: '', from: '', replyTo: '', subject: '', to: 'georgedevelop2017@gmail.com'
                    }catch(all){
                        echo 'ERROR OCCURED'
                         //mail bcc: '', body: '', cc: '', from: '', replyTo: '', subject: '', to: 'georgedevelop2017@gmail.com'
                        
                    }
                }
            }
        }
        /*
        stage("Deploy to Kubernetes"){
            steps{
                script{
                    try{
                        sh "kubectl apply -f ./${K8S_DEPLOYMENT_FILE}"
                        echo 'Deployed Success'    
                    }catch(all){
                        echo 'Deployed Failed'
                    }
                   
                }
            }
            
        }
        */

    }
    
    
    
}