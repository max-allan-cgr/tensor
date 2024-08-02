# tensor
Example TensorFlow app from :https://github.com/tensorflow/java-models/blob/master/tensorflow-examples/src/main/java/org/tensorflow/model/examples/cnn/fastrcnn/Readme.md


Docker build:
```
docker build -t img .
# Dockerey things happen...

docker run -it img 
java -jar target/hellotensorflow-1.0-SNAPSHOT.jar in.jpg out.jpg

```

(If using OSX then disable Rosetta in Docker settings.)
