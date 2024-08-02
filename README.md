# tensor
Example TensorFlow app from : https://www.tensorflow.org/jvm/install


Docker build:
```
docker build -t tens .
# Dockerey things happen...
# Maveney things happen...
#10 10.51 Hello TensorFlow 2.4.1
#10 10.67 2024-08-02 11:13:32.761370: I external/org_tensorflow/tensorflow/core/platform/cpu_feature_guard.cc:142] This TensorFlow binary is optimized with oneAPI Deep Neural Network Library (oneDNN) to use the following CPU instructions in performance-critical operations:  AVX2 FMA
#10 10.67 To enable them in other operations, rebuild TensorFlow with the appropriate compiler flags.
#10 10.69 2024-08-02 11:13:32.782526: I external/org_tensorflow/tensorflow/core/platform/profile_utils/cpu_utils.cc:112] CPU Frequency: 2650000000 Hz
#10 10.69 10 doubled is 20
#10 10.69 [INFO] ------------------------------------------------------------------------
#10 10.69 [INFO] BUILD SUCCESS
#10 10.69 [INFO] ------------------------------------------------------------------------
```

You can also run the tens image now, every time you need to know what 10+10 is.
```
docker run tens
[INFO] --- compiler:3.13.0:compile (default-compile) @ hellotensorflow ---
[INFO] Nothing to compile - all classes are up to date.
[INFO] 
[INFO] --- exec:3.3.0:java (default-cli) @ hellotensorflow ---
Hello TensorFlow 2.4.1
2024-08-02 11:15:21.731004: I external/org_tensorflow/tensorflow/core/platform/cpu_feature_guard.cc:142] This TensorFlow binary is optimized with oneAPI Deep Neural Network Library (oneDNN) to use the following CPU instructions in performance-critical operations:  AVX2 FMA
To enable them in other operations, rebuild TensorFlow with the appropriate compiler flags.
2024-08-02 11:15:21.767196: I external/org_tensorflow/tensorflow/core/platform/profile_utils/cpu_utils.cc:112] CPU Frequency: 2650000000 Hz
10 doubled is 20
```

If using OSX then disable Rosetta in Docker settings and build with the amd64 platform:
```
docker build -t tens --platform linux/amd64 .
```
