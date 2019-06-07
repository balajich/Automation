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
./bin/kafka-topics.sh --describe --topic first_topic --zookeeper localhost:2181

# List all topics
./bin/kafka-topics.sh --list --zookeeper localhost:2181

# Delete topic
./bin/kafka-topics.sh --delete --topic first_topic --zookeeper localhost:2181

# Producing to kafka topic
./bin/kafka-console-producer.sh \
    --broker-list 127.0.0.1:9092 --topic first_topic

# Console producer with all acks
./bin/kafka-console-producer.sh \
    --broker-list 127.0.0.1:9092 --topic first_topic \
	-- producer-property acks=all

# Console Consumer to reads from topic
# it reads from the place where it is started
./bin/kafka-console-consumer.sh \
    --bootstrap-server 127.0.0.1:9092 --topic first_topic

# Console consumer read from begining with random topic gets created
./bin/kafka-console-consumer.sh \
    --bootstrap-server 127.0.0.1:9092 --topic first_topic --from-beginning

# Console Consumer group
./bin/kafka-console-consumer.sh \
    --bootstrap-server 127.0.0.1:9092 --topic fourth_topic --from-beginning --group my-first-consumer-application

# Create a consumer group
./bin/kafka-console-consumer.sh \
    --bootstrap-server 127.0.0.1:9092 --topic fourth_topic --from-beginning --group my-first-consumer-application

# list Consumer groups
./bin/kafka-consumer-groups.sh \
    --bootstrap-server 127.0.0.1:9092  --list

# describe Consumer groups
./bin/kafka-consumer-groups.sh \
    --bootstrap-server 127.0.0.1:9092  --describe --group my-first-consumer-application

# Restting offsets to read from begining for consumer group
./bin/kafka-consumer-groups.sh \
    --bootstrap-server 127.0.0.1:9092   --group my-first-consumer-application \
    --reset-offsets --to-earliest --execute  --topic first_topic

# Running multiple brokers on single machine

./bin/kafka-server-start.sh config/server.properties
./bin/kafka-server-start.sh config/server1.properties
./bin/kafka-server-start.sh config/server2.properties

# Common config settings
broker.id=0
listeners=PLAINTEXT://:9092
log.dir=/tmp/kafka-logs

broker.id=1
listeners=PLAINTEXT://:9093
log.dir=/tmp/kafka-logs-1

broker.id=2
listeners=PLAINTEXT://:9094
log.dir=/tmp/kafka-logs-2