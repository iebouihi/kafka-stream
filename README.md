# kafka-streams-app
#BUILD The application
mvn clean package
#Execute the app
mvn exec:java -Dexec.mainClass=com.kafka.streams.samples.WordCount
