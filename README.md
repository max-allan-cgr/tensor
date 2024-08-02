# tensor

Docker build fails:
```
docker build -t tens --progress=plain --no-cache .
# Dockerey things happen...
# Maveney things happen...
[WARNING] 
java.lang.ClassNotFoundException: HelloTensorFlow
    at org.codehaus.mojo.exec.URLClassLoaderBuilder$ExecJavaClassLoader.loadClass (URLClassLoaderBuilder.java:181)
    at java.lang.ClassLoader.loadClass (ClassLoader.java:525)
    at org.codehaus.mojo.exec.ExecJavaMojo.doExec (ExecJavaMojo.java:371)
    at org.codehaus.mojo.exec.ExecJavaMojo.lambda$execute$0 (ExecJavaMojo.java:296)
    at java.lang.Thread.run (Thread.java:1570)
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  2.552 s
[INFO] Finished at: 2024-08-02T10:55:55Z
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal org.codehaus.mojo:exec-maven-plugin:3.3.0:java (default-cli) on project hellotensorflow: An exception occurred while executing the Java class. HelloTensorFlow -> [Help 1]
```

Docker run works:
```
docker run -itu0 -v`pwd`:/home/build -w /home/build --entrypoint sh chainguard/jdk:latest-dev
apk add maven
chown -R java: .
su java
mvn compile exec:java
# Maveney things happen...
Hello TensorFlow 2.4.1
2024-08-02 11:05:24.225834: I external/org_tensorflow/tensorflow/core/platform/cpu_feature_guard.cc:142] This TensorFlow binary is optimized with oneAPI Deep Neural Network Library (oneDNN) to use the following CPU instructions in performance-critical operations:  AVX2 FMA
To enable them in other operations, rebuild TensorFlow with the appropriate compiler flags.
2024-08-02 11:05:24.245090: I external/org_tensorflow/tensorflow/core/platform/profile_utils/cpu_utils.cc:112] CPU Frequency: 2650000000 Hz
10 doubled is 20
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
```
