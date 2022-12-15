**1. Logistic Regression**

You've learned to build a Decision Tree. But it's good to have options. Logistic Regression is another commonly used classification model.

**2. Logistic Curve**

It uses a logistic function to model a binary target, where the target states are usually denoted by 1 and 0 or TRUE and FALSE. The maths of the model are outside the scope of this course, but this is what the logistic function looks like. For a Logistic Regression model the x-axis is a linear combination of predictor variables and the y-axis is the output of the model. Since the value of the logistic function is a number between zero and one, it's often thought of as a probability. In order to translate this number into one or other of the target states it's compared to a threshold, which is normally set at one half.

**3. Logistic Curve**

If the number is above the threshold then the predicted state is one.

**4. Logistic Curve**

Conversely, if it's below the threshold then the predicted state is zero. The model derives coefficients for each of the numerical predictors. Those coefficients might...

**5. Logistic Curve**

shift the curve to the right...

**6. Logistic Curve**

or to the left. They might make the transition between states...

**7. Logistic Curve**

more gradual...

**8. Logistic Curve**

or more rapid. These characteristics are all extracted from the training data and will vary from one set of data to another.

**9. Cars revisited**

Let's make this more concrete by returning to the cars data. You'll focus on the numerical predictors for the moment and return to categorical predictors later on. As before you prepare the data by consolidating the predictors into a single column and then randomly splitting the data into training and testing sets.

**10. Build a Logistic Regression model**

To build a Logistic Regression model you first need to import the associated class and then create a classifier object. This is then fit to the training data using the fit() method.

**11. Predictions**

With a trained model you are able to make predictions on the testing data. As you saw with the Decision Tree, the transform() method adds the prediction and probability columns. The probability column gives the predicted probability of each class, while the prediction column reflects the predicted label, which is derived from the probabilities by applying the threshold mentioned earlier.

**12. Precision and recall**

You can assess the quality of the predictions by forming a confusion matrix. The quantities in the cells of the matrix can then be used to form some informative ratios. Recall that a positive prediction indicates that a car is manufactured outside of the USA and that predictions are considered to be true or false depending on whether they are correct or not. Precision is the proportion of positive predictions which are correct. For your model, two thirds of predictions for cars manufactured outside of the USA are correct. Recall is the proportion of positive targets which are correctly predicted. Your model also identifies 80% of cars which are actually manufactured outside of the USA. Bear in mind that these metrics are based on a relatively small testing set.

**13. Weighted metrics**

Another way of looking at these ratios is to weight them across the positive and negative predictions. You can do this by creating an evaluator object and then calling the evaluate() method. This method accepts an argument which specifies the required metric. It's possible to request the weighted precision and recall as well as the overall accuracy. It's also possible to get the F1 metric, the harmonic mean of precision and recall, which is generally more robust than the accuracy. All of these metrics have assumed a threshold of one half. What happens if you vary that threshold?

**14. ROC and AUC**

A threshold is used to decide whether the number returned by the Logistic Regression model translates into either the positive or the negative class. By default that threshold is set at a half. However, this is not the only choice. Choosing a larger or smaller value for the threshold will affect the performance of the model. The ROC curve plots the true positive rate versus the false positive rate as the threshold increases from zero (top right) to one (bottom left). The AUC summarizes the ROC curve in a single number. It's literally the area under the ROC curve. AUC indicates how well a model performs across all values of the threshold. An ideal model, that performs perfectly regardless of the threshold, would have AUC of 1. In an exercise we'll see how to use another evaluator to calculate the AUC.

**15. Let's do Logistic Regression!**

You now know how to build a Logistic Regression model and assess the performance of that model using various metrics. Let's give this a try!