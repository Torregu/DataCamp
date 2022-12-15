**1. Cross-Validation**

Up until now you've been testing models using a rather simple technique: randomly splitting the data into training and testing sets, training the model on the training data and then evaluating its performance on the testing set. There's one major drawback to this approach: you only get one estimate of the model performance. You would have a more robust idea of how well a model works if you were able to test it multiple times. This is precisely the idea behind cross-validation.

**2. CV - complete data**

You start out with the full set of data.

**3. CV - train/test split**

You still split these data into a training set and a testing set. Remember that before splitting it's important to first randomize the data so that the distributions in the training and testing data are similar.

**4. CV - multiple folds**

You then split the training data into a number of partitions or "folds". The number of folds normally factors into the name of the technique. For example, if you split into five folds then you'd talk about 5-fold cross-validation.

**5. Fold upon fold - first fold**

Once the training data have been split into folds you can start cross-validating. First keep aside the data in the first fold. Train a model on the remaining four folds. Then evaluate that model on the data from the first fold. This will give the first value for the evaluation metric.

**6. Fold upon fold - second fold**

Next you move onto the second fold, where the same process is repeated: data in the second fold are set aside for testing while the remaining four folds are used to train a model. That model is tested on the second fold data, yielding the second value for the evaluation metric.

**7. Fold upon fold - other folds**

You repeat the process for the remaining folds. Each of the folds is used in turn as testing data and you end up with as many values for the evaluation metric as there are folds. At this point you are in a position to calculate the average of the evaluation metric over all folds, which is a much more robust measure of model performance than a single value.

**8. Cars revisited**

Let's see how this works in practice. Remember the cars data? Of course you do. You're going to build a cross-validated regression model to predict consumption.

**9. Estimator and evaluator**

Here are the first two ingredients which you need to perform cross-validation: - an estimator, which builds the model and is often a pipeline; and - an evaluator, which quantifies how well a model works on testing data. We've seen both of these a few times already.

**10. Grid and cross-validator**

Now the final ingredients. You'll need two new classes, CrossValidator and ParamGridBuilder, both from the tuning sub-module. You'll create a parameter grid, which you'll leave empty for the moment, but will return to in detail during the next lesson. Finally you have everything required to create a cross-validator object: - an estimator, which is the linear regression model, - an empty grid of parameters for the estimator and - an evaluator which will calculate the RMSE. You can optionally specify the number of folds (which defaults to three) and a random number seed for repeatability.

**11. Cross-validators need training too**

The cross-validator has a fit() method which will apply the cross-validation procedure to the training data. You can then look at the average RMSE calculated across all of the folds. This is a more robust measure of model performance because it is based on multiple train/test splits. Note that the average metric is returned as a list. You'll see why in the next lesson.

**12. Cross-validators act like models**

The trained cross-validator object acts just like any other model. It has a transform method, which can be used to make predictions on new data. If we evaluate the predictions on the original testing data then we find a smaller value for the RMSE than we obtained using cross-validation. This means that a simple train-test split would have given an overly optimistic view on model performance.

**13. Cross-validate all the models!**

Let's give cross-validation a try on our flights model.