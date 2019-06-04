# Start Zookeeper
# /home/mario/soft/kafka_2.12-2.2.0
./bin/zookeeper-server-start.sh config/zookeeper.properties

# Start kafka server
./bin/kafka-server-start.sh config/server.properties

# Data files of zookeeper and kafka
/home/mario/soft/kafka_2.12-2.2.0/data/kafka
/home/mario/soft/kafka_2.12-2.2.0/data/zookeeper

# Create topic
./bin/kafka-topics.sh --create --topic first_topic --zookeeper localhost:2181 --replication-factor 1 --partitions 1

# Describe topic
./bin/kafka-topics.sh --describe --topic thrid_topic --zookeeper localhost:2181

# List all topics
./bin/kafka-topics.sh --list --zookeeper localhost:2181

# Producing to kafka topic
./bin/kafka-console-producer.sh \
    --broker-list 127.0.0.1:9092 --topic first_topic

# Console producer with all acks
./bin/kafka-console-producer.sh \
    --broker-list 127.0.0.1:9092 --topic first_topic \
	-- producer-property acks=all0