node{
stage('Stop Servers'){
        sh '''cd /home/mario/soft/kafka
              bin/zookeeper-server-stop.sh config/zookeeper.properties
              bin/kafka-server-stop.sh config/server0.properties

            '''
        }
}
