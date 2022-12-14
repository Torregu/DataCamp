**1. Connecting to Spark**

The previous lesson was high level overviews of Machine Learning and Spark. In this lesson you'll review the process of connecting to Spark.

**2. Interacting with Spark**

The connection with Spark is established by the driver, which can be written in either Java, Scala, Python or R. Each of these languages has advantages and disadvantages. Java is relatively verbose, requiring a lot of code to accomplish even simple tasks. By contrast, Scala, Python and R, are high-level languages which can accomplish much with only a small amount of code. They also offer a REPL, or Read-Evaluate-Print loop, which is crucial for interactive development. You'll be using Python.

**3. Importing pyspark**

Python doesn't talk natively to Spark, so we'll kick off by importing the pyspark module, which makes Spark functionality available in the Python interpreter. Spark is under vigorous development. Because the interface is evolving it's important to know what version you're working with. We'll be using version 2.4.1, which was released in March 2019.

**4. Sub-modules**

In addition to the main pyspark module, there are a few sub-modules which implement different aspects of the Spark interface. There are two versions of Spark Machine Learning: mllib, which uses an unstructured representation of data in RDDs and has been deprecated, and ml which is based on a structured, tabular representation of data in DataFrames. We'll be using the latter.

**5. Spark URL**

With the pyspark module loaded, you are able to connect to Spark. The next thing you need to do is tell Spark where the cluster is located. Here there are two options. You can either connect to a remote cluster, in which case you need to specify a Spark URL, which gives the network location of the cluster's master node. The URL is composed of an IP address or DNS name and a port number. The default port for Spark is 7077, but this must still be explicitly specified. When you're figuring out how Spark works, the infrastructure of a distributed cluster can get in the way. That's why it's useful to create a local cluster, where everything happens on a single computer. This is the setup that you're going to use throughout this course. For a local cluster, you need only specify "local" and, optionally, the number of cores to use. By default, a local cluster will run on a single core. Alternatively, you can give a specific number of cores or simply use the wildcard to choose all available cores.

**6. Creating a SparkSession**

You connect to Spark by creating a SparkSession object. The SparkSession class is found in the pyspark.sql sub-module. You specify the location of the cluster using the master() method. Optionally you can assign a name to the application using the appName() method. Finally you call the getOrCreate() method, which will either create a new session object or return an existing object. Once the session has been created you are able to interact with Spark. Finally, although it's possible for multiple SparkSessions to co-exist, it's good practice to stop the SparkSession when you're done.

**7. Let's connect to Spark!**

Great! Let's connect to Spark!