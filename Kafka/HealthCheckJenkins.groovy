node{
stage('List Topics'){
        sh '''cd /home/mario/soft/kafka
              bin/kafka-topics.sh --list --zookeeper localhost:2181 '''
        }
}
