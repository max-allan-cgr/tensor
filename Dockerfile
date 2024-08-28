FROM cgr.dev/chainguard-private/adoptium-jdk:adoptium-openjdk-8-dev
USER root
RUN apk add --no-cache maven curl
USER 65532
WORKDIR /home/build
RUN mkdir -p models/faster_rcnn_inception_resnet_v2_1024x1024
RUN curl -sL  https://www.kaggle.com/api/v1/models/tensorflow/faster-rcnn-inception-resnet-v2/tensorFlow2/1024x1024/1/download | tar xz -C models/faster_rcnn_inception_resnet_v2_1024x1024
RUN wget https://github.com/tensorflow/models/blob/master/research/object_detection/test_images/image2.jpg?raw=true -O in.jpg
COPY src /home/build/src/
COPY pom.xml /home/build

RUN mvn package
ENTRYPOINT ["/usr/bin/java"]
CMD [ "-jar", "target/hellotensorflow-1.0-SNAPSHOT.jar", "in.jpg" ]


# java -Dorg.bytedeco.javacpp.noPointerGC=true -Dorg.bytedeco.javacpp.logger.debug=true -jar target/hellotensorflow-1.0-SNAPSHOT.jar in.jpg


# java -Djdk.tls.client.protocols=TLSv1.2 -Djava.rmi.server.hostname=10.235.143.231 -XX:+UseG1GC -XX:MaxGCPauseMillis=250 -XX:InitiatingHeapOccupancyPercent=70 -XX:ParallelGCThreads=16 \
#  -XX:ConcGCThreads=5 -XX:G1HeapRegionSize=32m -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -XX:-ResizePLAB -Xmx3g -Xms3g -verbose:gc \
#  -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -Xloggc:/logs/gc/gc.log -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=5 -XX:GCLogFileSize=2M \
#  -XX:+PrintGCDateStamps -XX:+UnlockDiagnosticVMOptions -XX:+LogCompilation -DlogRoot=/pang/logs/heliacal \
#  -Dlog4j2.contextSelector=org.apache.logging.log4j.core.async.AsyncLoggerContextSelector \
#  -Dorg.bytedeco.javacpp.noPointerGC=true -Dorg.bytedeco.javacpp.logger.debug=true -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.authenticate=false \
#  -Djava.rmi.server.hostname= -Dcoupang.searcher.use_executor=true -Dcoupang.searcher.childdoccollector.dropzeronegative=true \
#  -jar target/hellotensorflow-1.0-SNAPSHOT.jar in.jpg
#  OpenJDK 64-Bit Server VM warning: Cannot open file /logs/gc/gc.log due to No such file or directory

# Killed



# java -Djdk.tls.client.protocols=TLSv1.2 -XX:+UseG1GC -XX:MaxGCPauseMillis=250 -XX:InitiatingHeapOccupancyPercent=70 -XX:ParallelGCThreads=16 \
#  -XX:ConcGCThreads=5 -XX:G1HeapRegionSize=32m -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -XX:-ResizePLAB -Xmx2g -Xms2g -verbose:gc \
#  -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -Xloggc:/tmp/gc.log -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=5 -XX:GCLogFileSize=2M \
#  -XX:+PrintGCDateStamps -XX:+UnlockDiagnosticVMOptions -XX:+LogCompilation -DlogRoot=/tmp/heliacal \
#  -Dlog4j2.contextSelector=org.apache.logging.log4j.core.async.AsyncLoggerContextSelector \
#  -Dorg.bytedeco.javacpp.noPointerGC=true -Dorg.bytedeco.javacpp.logger.debug=true \
#  -jar target/hellotensorflow-1.0-SNAPSHOT.jar in.jpg

