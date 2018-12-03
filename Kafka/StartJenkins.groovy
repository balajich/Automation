node{
stage('Start Zookeeper'){
             withEnv(['JENKINS_NODE_COOKIE=dontkill']) {
                    sh '''cd /home/mario/soft/kafka
                          nohup bin/zookeeper-server-start.sh config/zookeeper.properties & '''
                }
            }
stage('Start Cluster0'){
             withEnv(['JENKINS_NODE_COOKIE=dontkill']) {
                    sh '''cd /home/mario/soft/kafka
                          nohup  bin/kafka-server-start.sh config/server0.properties & '''
                }
            }

}
