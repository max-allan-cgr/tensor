FROM chainguard/jdk:latest-dev
USER root
RUN apk add maven curl
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