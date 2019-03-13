FROM hypriot/rpi-java
MAINTAINER iceKylin "xiasuwan@live.com"
COPY lib* /usr/lib/jvm/java-8-openjdk-armhf/jre/lib/arm/
COPY RXTXcomm.jar //usr/lib/jvm/java-8-openjdk-armhf/jre/lib/ext/
COPY device.jar /data/

ENTRYPOINT ["java","-Xmx64m","-Xss256k","-XX:ParallelGCThreads=2","-Djava.compiler=NONE","-jar","/data/device.jar"]
