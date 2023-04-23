export KAFKA_HOME=/opt/kafka_2.13-3.4.0
cd $KAFKA_HOME
echo "Create the input topic named streams-plaintext-input and the output topic named streams-word-count-output"
bin/kafka-topics.sh --create     --bootstrap-server localhost:9092     --replication-factor 1     --partitions 1     --topic streams-plaintext-input
bin/kafka-topics.sh --create     --bootstrap-server localhost:9092     --replication-factor 1     --partitions 1     --topic streams-wordcount-output     --config cleanup.policy=compact

echo "bin/kafka-topics.sh --bootstrap-server localhost:9092 --describe"
bin/kafka-topics.sh --bootstrap-server localhost:9092 --describe

#The created topic can be described with the same kafka-topics tool:
bin/kafka-topics.sh --bootstrap-server localhost:9092 --describe
#The following command starts the WordCount demo application



