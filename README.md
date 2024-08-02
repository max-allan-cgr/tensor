# tensor
Example TensorFlow app from :https://github.com/tensorflow/java-models/blob/master/tensorflow-examples/src/main/java/org/tensorflow/model/examples/cnn/fastrcnn/Readme.md


Docker build:
```
docker build -t img --platform linux/amd64 .
# Dockerey things happen...

docker run -it img 
java -jar target/hellotensorflow-1.0-SNAPSHOT.jar in.jpg out.jpg
# OR for local files (in pwd)
docker run -v $PWD:/app img java -jar /home/build/target/hellotensorflow-1.0-SNAPSHOT.jar /app/in.jpg /app/out.jpg
```

(If using OSX then disable Rosetta in Docker settings.)

You may safely make and drink a cup of coffee while the model runs.
