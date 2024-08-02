FROM chainguard/jdk:latest-dev
USER root
RUN apk add maven
USER 65532
WORKDIR /home/build
COPY src /home/build/src/
COPY pom.xml /home/build
RUN mvn compile exec:java
ENTRYPOINT []
CMD ["mvn","compile","exec:java"]