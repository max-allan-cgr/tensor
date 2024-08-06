# tensor
Example TensorFlow app from :https://github.com/tensorflow/java-models/blob/master/tensorflow-examples/src/main/java/org/tensorflow/model/examples/cnn/fastrcnn/Readme.md


Docker build:
```
docker build -t img --platform linux/amd64 .
# Dockerey things happen...

docker run -m 1200m img
2024-08-05 11:35:08.993428: I external/org_tensorflow/tensorflow/cc/saved_model/reader.cc:43] Reading SavedModel from: models/faster_rcnn_inception_resnet_v2_1024x1024
2024-08-05 11:35:09.514763: I external/org_tensorflow/tensorflow/cc/saved_model/reader.cc:107] Reading meta graph with tags { serve }
2024-08-05 11:35:09.514854: I external/org_tensorflow/tensorflow/cc/saved_model/reader.cc:148] Reading SavedModel debug info (if present) from: models/faster_rcnn_inception_resnet_v2_1024x1024
2024-08-05 11:35:10.996864: I external/org_tensorflow/tensorflow/cc/saved_model/loader.cc:228] Restoring SavedModel bundle.
2024-08-05 11:35:17.440962: I external/org_tensorflow/tensorflow/cc/saved_model/loader.cc:212] Running initialization op on SavedModel bundle at path: models/faster_rcnn_inception_resnet_v2_1024x1024
2024-08-05 11:35:20.971501: I external/org_tensorflow/tensorflow/cc/saved_model/loader.cc:301] SavedModel load for tags { serve }; Status: success: OK. Took 11978067 microseconds.
Cococount = 91.0
numDetects = 100
boxArraySize = 21


docker run -m 1100m img
2024-08-05 11:36:46.607428: I external/org_tensorflow/tensorflow/cc/saved_model/reader.cc:43] Reading SavedModel from: models/faster_rcnn_inception_resnet_v2_1024x1024
2024-08-05 11:36:47.102987: I external/org_tensorflow/tensorflow/cc/saved_model/reader.cc:107] Reading meta graph with tags { serve }
2024-08-05 11:36:47.103080: I external/org_tensorflow/tensorflow/cc/saved_model/reader.cc:148] Reading SavedModel debug info (if present) from: models/faster_rcnn_inception_resnet_v2_1024x1024
2024-08-05 11:36:48.822266: I external/org_tensorflow/tensorflow/cc/saved_model/loader.cc:228] Restoring SavedModel bundle.
2024-08-05 11:36:54.566243: I external/org_tensorflow/tensorflow/cc/saved_model/loader.cc:212] Running initialization op on SavedModel bundle at path: models/faster_rcnn_inception_resnet_v2_1024x1024
2024-08-05 11:36:58.122729: I external/org_tensorflow/tensorflow/cc/saved_model/loader.cc:301] SavedModel load for tags { serve }; Status: success: OK. Took 11515306 microseconds.
Cococount = 91.0
Exception in thread "main" java.lang.OutOfMemoryError: Physical memory usage is too high: physicalBytes (1069M) > maxPhysicalBytes (1067M)
	at org.bytedeco.javacpp.Pointer.deallocator(Pointer.java:712)
	at org.tensorflow.internal.c_api.AbstractTF_Tensor.withDeallocator(AbstractTF_Tensor.java:118)
	at org.tensorflow.Session.run(Session.java:853)
	at org.tensorflow.Session.access$300(Session.java:82)
	at org.tensorflow.Session$Runner.runHelper(Session.java:552)
	at org.tensorflow.Session$Runner.runNoInit(Session.java:499)
	at org.tensorflow.Session$Runner.run(Session.java:495)
	at HelloTensorFlow.main(HelloTensorFlow.java:185)
	Suppressed: java.lang.OutOfMemoryError: Physical memory usage is too high: physicalBytes (1069M) > maxPhysicalBytes (1067M)
		at org.bytedeco.javacpp.Pointer.deallocator(Pointer.java:712)
		at org.tensorflow.internal.c_api.AbstractTF_Status.newStatus(AbstractTF_Status.java:70)
		at org.tensorflow.internal.c_api.AbstractTF_Session$DeleteDeallocator.deallocate(AbstractTF_Session.java:38)
		at org.bytedeco.javacpp.Pointer$DeallocatorReference.deallocate(Pointer.java:346)
		at org.bytedeco.javacpp.Pointer$DeallocatorReference.release(Pointer.java:361)
		at org.bytedeco.javacpp.Pointer.releaseReference(Pointer.java:789)
		at org.tensorflow.Session.delete(Session.java:775)
		at org.tensorflow.Session.close(Session.java:175)
		at HelloTensorFlow.main(HelloTensorFlow.java:266)


```

(If using OSX then disable Rosetta in Docker settings.)

You may safely make and drink a cup of coffee while the model runs.
