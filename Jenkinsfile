def job_name = "${env.JOB_NAME}".split('/')[0]

def branch = "${env.JOB_NAME}".split('/')[1]

def pipelineDirectory = "/var/jenkins_home/pipeline-scripts"

 

pipeline {

        agent any

        options {

                disableConcurrentBuilds()

        }

        stages {

                stage('update pipeline') {

                        steps {

                                script {

                                        sh "git -C " + pipelineDirectory + " fetch"

                                        sh "git -C " + pipelineDirectory + " checkout -m ${branch}"

                                        sh "git -C " + pipelineDirectory + " reset --hard origin/${branch}"

                                }

                        }

                }
