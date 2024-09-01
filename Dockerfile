tage('docker build') {

                        steps {

                                script {

                                        sh "cp " + pipelineDirectory + "/${job_name}/Dockerfile ."

                                        sh "docker build . --build-arg APPLICATION=${job_name} -t pia-tech/${job_name}:master-v${env.BUILD_ID}"

                                }

                        }

                }

          }

  }
