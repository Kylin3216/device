FROM hypriot/rpi-java
MAINTAINER iceKylin "xiasuwan@live.com"
COPY lib* /usr/lib/jvm/java-8-openjdk-armhf/jre/lib/arm/
COPY RXTXcomm.jar //usr/lib/jvm/java-8-openjdk-armhf/jre/lib/ext/
COPY device.jar /data/
ENV BOAT=""
ENTRYPOINT ["java","-Xmx64m","-Xss256k","-XX:ParallelGCThreads=2","-Djava.compiler=NONE","-Dspring.boat=$BOAT","-jar","/data/device.jar"]
