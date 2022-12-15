**1. Pipeline**

Welcome back! So far you've learned how to build classifier and regression models using Spark. In this chapter you'll learn how to make those models better. You'll start by taking a look at pipelines, which will seriously streamline your workflow. They will also help to ensure that training and testing data are treated consistently and that no leakage of information between these two sets takes place.

**2. Leakage?**

What do I mean by leakage? Most of the actions you've been using involve both a fit() and a transform() method. Those methods have been applied in a fairly relaxed way. But to get really robust results you need to be careful only to apply the fit() method to training data. Why? Because if a fit() method is applied to *any* of the testing data then the model will effectively have seen those data during the training phase, so the results of testing will no longer be objective. The transform() method, on the other hand, can be applied to both training and testing data since it does not result in any changes in the underlying model.

**3. A leaky model**

A figure should make this clearer. Leakage occurs whenever a fit() method is applied to testing data. Suppose that you fit a model using both the training and testing data. The model would then already have *seen* the testing data, so using those data to test the model would not be fair: of course the model will perform well on data which has been used for training! This sounds obvious, but care must be taken not to fall into this trap. Remember that there are normally multiple stages in building a model and if the fit() method in *any* of those stages is applied to the testing data then the model is compromised.

**4. A watertight model**

However, if you are careful to only apply fit() to the training data then your model will be in good shape. When it comes to testing it will not have seen *any* of the testing data and the test results will be completely objective. Luckily a pipeline will make it easier to avoid leakage because it simplifies the training and testing process.

**5. Pipeline**

A pipeline is a mechanism to combine a series of steps. Rather than applying each of the steps individually, they are all grouped together and applied as a single unit.

**6. Cars model: Steps**

Let's return to our cars regression model. Recall that there were a number of steps involved: - using a string indexer to convert the type column to indexed values; - applying a one-hot encoder to convert those indexed values into dummy variables; then - assembling a set of predictors into a single features column; and finally - building a regression model.

**7. Cars model: Applying steps**

Let's map out the process of applying those steps. - First you fit the indexer to the training data. Then you call the transform() method on the training data to add the indexed column. - Then you call the transform() method on the testing data to add the indexed column there too. Note that the testing data was not used to fit the indexer. Next you do the same things for the one-hot encoder, fitting to the training data and then using the fitted encoder to update the training and testing data sets. The assembler is next. In this case there is no fit() method, so you simply apply the transform() method to the training and testing data. Finally the data are ready. You fit the regression model to the training data and then use the model to make predictions on the testing data. Throughout the process you've been careful to keep the testing data out of the training process. But this is hard work and it's easy enough to slip up.

**8. Cars model: Pipeline**

A pipeline makes training and testing a complicated model a lot easier. The Pipeline class lives in the ml sub-module. You create a pipeline by specifying a sequence of stages, where each stage corresponds to a step in the model building process. The stages are executed in order. Now, rather than calling the fit() and transform() methods for each stage, you simply call the fit() method for the pipeline on the training data. Each of the stages in the pipeline is then automatically applied to the training data in turn. This will systematically apply the fit() and transform() methods for each stage in the pipeline. The trained pipeline can then be used to make predictions on the testing data by calling its transform() method. The pipeline transform() method will only call the transform() method for each of the stages in the pipeline. Isn't that simple?

**9. Cars model: Stages**

You can access the stages in the pipeline by using the .stages attribute, which is a list. You pick out individual stages by indexing into the list. For example, to access the regression component of the pipeline you'd use an index of 3. Having access to that component makes it possible to get the intercept and coefficients for the trained LinearRegression model.

**10. Pipelines streamline workflow!**

Pipelines make your code easier to read and maintain. Let's try them out with our flights model.