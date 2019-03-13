FROM hypriot/rpi-java
MAINTAINER iceKylin "xiasuwan@live.com"
COPY lib* /usr/lib/jvm/java-8-openjdk-armhf/jre/lib/arm/
COPY RXTXcomm.jar //usr/lib/jvm/java-8-openjdk-armhf/jre/lib/ext/
COPY device.jar /data/
COPY docker-entrypoint.sh /data/
ENV BOAT=""
ENTRYPOINT ["docker-entrypoint.sh"]
