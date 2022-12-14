**1. Machine Learning & Spark**

Hi! Welcome to the course on Machine Learning with Apache Spark, in which you will learn how to build Machine Learning models on large data sets using distributed computing techniques. Let's start with some fundamental concepts.

**2. Building the perfect waffle (an analogy)**

Suppose you wanted to teach a computer how to make waffles. You could find a good recipe and then give the computer explicit instructions about ingredients and proportions. Alternatively, you could present the computer with a selection of different waffle recipes and let it figure out the ingredients and proportions for the best recipe. The second approach is how Machine Learning works: the computer literally learns from examples.

**3. Regression & classification**

Machine Learning problems are generally less esoteric than finding the perfect waffle recipe. The most common problems apply either Regression or Classification. A regression model learns to predict a number. For example, when making waffles, how much flour should be used for a particular amount of sugar? A classification model, on the other hand, predicts a discrete or categorical value. For example, is a recipe calling for a particular amount of sugar and salt more likely to be for waffles or cupcakes?

**4. Data in RAM**

The performance of a Machine Learning model depends on data. In general, more data is a good thing. If an algorithm is able to train on a larger set of data, then its ability to generalize to new data will inevitably improve. However, there are some practical constraints. If the data can fit entirely into RAM then the algorithm can operate efficiently. What happens when those data no longer fit into memory?

**5. Data exceeds RAM**

The computer will start to use *virtual memory* and data will be *paged* back and forth between RAM and disk. Relative to RAM access, retrieving data from disk is slow. As the size of the data grows, paging becomes more intense and the computer begins to spend more and more time waiting for data. Performance plummets.

**6. Data distributed across a cluster**

How then do we deal with truly large datasets? One option is to distribute the problem across multiple computers in a cluster. Rather than trying to handle a large dataset on a single machine, it's divided up into partitions which are processed separately. Ideally each data partition can fit into RAM on a single computer in the cluster. This is the approach used by Spark.

**7. What is Spark?**

Spark is a general purpose framework for cluster computing. It is popular for two main reasons: 1. it's generally much faster than other Big Data technologies like Hadoop, because it does most processing in memory and 2. it has a developer-friendly interface which hides much of the complexity of distributed computing.

**8. Components: nodes**

Let's review the components of a Spark cluster. The cluster itself consists of one or more nodes. Each node is a computer with CPU, RAM and physical storage.

**9. Components: cluster manager**

A cluster manager allocates resources and coordinates activity across the cluster.

**10. Components: driver**

Every application running on the Spark cluster has a driver program. Using the Spark API, the driver communicates with the cluster manager, which in turn distributes work to the nodes.

**11. Components: executors**

On each node Spark launches an executor process which persists for the duration of the application. Work is divided up into tasks, which are simply units of computation. The executors run tasks in multiple threads across the cores in a node. When working with Spark you normally don't need to worry *too* much about the details of the cluster. Spark sets up all of that infrastructure for you and handles all interactions within the cluster. However, it's still useful to know how it works under the hood.

**12. Onward!**

You now have a basic understanding of the principles of Machine Learning and distributed computing with Spark. Next we'll learn how to connect to a Spark cluster.