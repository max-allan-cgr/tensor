# tensor
Example TensorFlow app from :https://github.com/tensorflow/java-models/blob/master/tensorflow-examples/src/main/java/org/tensorflow/model/examples/cnn/fastrcnn/Readme.md


Docker build:
```
docker build -t img .
# Dockerey things happen...

docker run -it img
java -cp target/hellotensorflow-1.0-SNAPSHOT.jar HelloTensorFlow
Error: Unable to initialize main class HelloTensorFlow
Caused by: java.lang.NoClassDefFoundError: org/tensorflow/ExecutionEnvironment

```

(If using OSX then disable Rosetta in Docker settings.)
