export KAFKA_HOME=/opt/kafka_2.13-3.4.0
cd $KAFKA_KAFKA_HOME
bin/kafka-run-class.sh com.kafka.streams.samples.WordCount

## Write some message
bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic streams-plaintext-input

## Read output
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092     --topic streams-wordcount-output     --from-beginning     --formatter kafka.tools.DefaultMessageFormatter     --property print.key=true     --property print.value=true     --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer     --property value.deserializer=org.apache.kafka.common.serialization.LongDeserializer

