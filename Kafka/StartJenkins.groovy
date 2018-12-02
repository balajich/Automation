node{
stage('Start Zookeeper'){
sh '''cd /usr/local/bin/kafka
bin/zookeeper-server-start.sh config/zookeeper.properties'''
}
}
