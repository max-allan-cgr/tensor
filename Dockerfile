FROM chainguard/jdk:latest-dev
USER root
RUN apk add maven curl
USER 65532
WORKDIR /home/build
RUN mkdir -p models/faster_rcnn_inception_resnet_v2_1024x1024
RUN curl -sL  https://www.kaggle.com/api/v1/models/tensorflow/faster-rcnn-inception-resnet-v2/tensorFlow2/1024x1024/1/download | tar xz -C models/faster_rcnn_inception_resnet_v2_1024x1024

COPY src /home/build/src/
COPY pom.xml /home/build

RUN mvn package
ENTRYPOINT ["/bin/sh"]
CMD []