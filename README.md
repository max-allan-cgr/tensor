# tensor
Example TensorFlow app from :https://github.com/tensorflow/java-models/blob/master/tensorflow-examples/src/main/java/org/tensorflow/model/examples/cnn/fastrcnn/Readme.md


Docker build with Gradle:
```
docker build --platform linux/amd64 -t tens.gradle -f Dockerfile.gradle .
docker run -it tens.gradle
java -jar build/libs/hellotensorflow-1.0-SNAPSHOT.jar in.jpg
```

(If using OSX then disable Rosetta in Docker settings.)

