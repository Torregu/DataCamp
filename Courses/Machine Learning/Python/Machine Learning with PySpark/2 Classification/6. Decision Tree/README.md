**1. Decision Tree**

Your first Machine Learning model will be a Decision Tree. This is probably the most intuitive model, so it seems like a good place to start.

**2. Anatomy of a Decision Tree: Root node**

A Decision Tree is constructed using an algorithm called "Recursive Partitioning". Consider a hypothetical example in which you build a Decision Tree to divide data into two classes, green and blue. You start by putting all of the records into the root node. Suppose that there are more green records than blue, in which case this node will be labelled "green". Now from amongst the predictors in the data you need to choose the one that will result in the most informative split of the data into two groups. Ideally you want the groups to be as homogeneous (or "pure") as possible: one should be mostly green and the other should be mostly blue.

**3. Anatomy of a Decision Tree: First split**

Once you have identified the most informative predictor, you split the data into two sets, labeled "green" or "blue" according to the dominant class. And this is where the recursion kicks in: you then apply exactly the same procedure on each of the child nodes, selecting the most informative predictor and splitting again.

**4. Anatomy of a Decision Tree: Second split**

So, for example, the green node on the left could be split again into two groups.

**5. Anatomy of a Decision Tree: Third split**

And the resulting green node could once again be split. The depth of each branch of the tree need not be the same. There are a variety of stopping criteria which can cause splitting to stop along a branch. For example, if the number of records in a node falls below a threshold or the purity of a node is above a threshold, then you might stop splitting. Once you have built the Decision Tree you can use it to make predictions for new data by following the splits from the root node along to the tip of a branch. The label for the final node would then be the prediction for the new data.

**6. Classifying cars**

Let's make this more concrete by looking at the cars data. You've transformed the country of origin column into a numeric index called 'label', with zero corresponding to cars manufactured in the USA and one for everything else. The remaining columns have all been consolidated into a column called 'features'. You want to build a Decision Tree which will use "features" to predict "label".

**7. Split train/test**

An important aspect of building a Machine Learning model is being able to assess how well it works. In order to do this we use the randomSplit() method to randomly split our data into two sets, a training set and a testing set. The proportions may vary, but generally you're looking at something like an 80:20 split, which means that the training set ends up having around 4 times as many records as the testing set.

**8. Build a Decision Tree model**

Finally the moment has come, you're going to build a Decision Tree. You start by creating a DecisionTreeClassifier() object. The next step is to fit the model to the training data by calling the fit() method.

**9. Evaluating**

Now that you've trained the model you can assess how effective it is by making predictions on the test set and comparing the predictions to the known values. The transform() method adds new columns to the DataFrame. The prediction column gives the class assigned by the model. You can compare this directly to the known labels in the testing data. Although the model gets the first example wrong, it's correct for the following four examples. There's also a probability column which gives the probabilities assigned to each of the outcome classes. For the first example, the model predicts that the outcome is 0 with probability 96%.

**10. Confusion matrix**

A good way to understand the performance of a model is to create a confusion matrix which gives a breakdown of the model predictions versus the known labels. The confusion matrix consists of four counts which are labelled as follows: - "positive" indicates a prediction of 1, while - "negative" indicates a prediction of 0 and - "true" corresponds to a correct prediction, while - "false" designates an incorrect prediction. In this case the true positives and true negatives dominate but the model still makes a number of incorrect predictions. These counts can be used to calculate the accuracy, which is the proportion of correct predictions. For our model the accuracy is 74%.

**11. Let's build Decision Trees!**

So, now that you know how to build a Decision Tree model with Spark, you can try that out on the flight data.