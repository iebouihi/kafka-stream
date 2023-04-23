#Set KAFKA HOME
export KAFKA_HOME=/opt/kafka_2.13-3.4.0
#Start ZooKeeper
cd $KAFKA_HOME
bin/okeeper-server-start.sh config/zookeeper.properties
#Start Kafka
bin/kafka-server-start.sh config/server.properties


