**1. Regularization**

The regression models that you've built up until now have blindly included all of the provided features. Next you are going to learn about a more sophisticated model which effectively selects only the most useful features.

**2. Features: Only a few**

A linear regression model attempts to derive a coefficient for each feature in the data. The coefficients quantify the effect of the corresponding features. More features imply more coefficients. This works well when your dataset has a few columns and many rows. You need to derive a few coefficients and you have plenty of data.

**3. Features: Too many**

The converse situation, many columns and few rows, is much more challenging. Now you need to calculate values for numerous coefficients but you don't have much data to do it. Even if you do manage to derive values for all of those coefficients, your model will end up being very complicated and difficult to interpret. Ideally you want to create a parsimonious model: one that has just the minimum required number of predictors. It will be as simple as possible, yet still able to make robust predictions.

**4. Features: Selected**

The obvious solution is to simply select the "best" subset of columns. But how to choose that subset? There are a variety of approaches to this "feature selection" problem.

**5. Loss function (revisited)**

In this lesson we'll be exploring one such approach to feature selection known as "penalized regression". The basic idea is that the model is penalized, or punished, for having too many coefficients. Recall that the conventional regression algorithm chooses coefficients to minimize the loss function, which is average of the squared residuals. A good model will result in low MSE because its predictions will be close to the observed values.

**6. Loss function with regularization**

With penalized regression an additional "regularization" or "shrinkage" term is added to the loss function. Rather than depending on the data, this term is a function of the model coefficients.

**7. Regularization term**

There are two standard forms for the regularization term. Lasso regression uses a term which is proportional to the absolute value of the coefficients, while Ridge regression uses the square of the coefficients. In both cases this extra term in the loss function penalizes models with too many coefficients. There's a subtle distinction between Lasso and Ridge regression. Both will shrink the coefficients of unimportant predictors. However, whereas Ridge will result in those coefficients being close to zero, Lasso will actually force them to zero precisely. It's also possible to have a mix of Lasso and Ridge. The strength of the regularization is determined by a parameter which is generally denoted by the Greek symbol lambda. When lambda = 0 there is no regularization and when lambda is large regularization completely dominates. Ideally you want to choose a value for lambda between these two extremes!

**8. Cars again**

Let's make this more concrete by returning to the cars data. We've assembled the mass, cylinders and type columns along with the freshly engineered density columns. We've effectively got ten predictors available for the model. As usual we'll split these data into training and testing sets.

**9. Cars: Linear regression**

Let's start by fitting a standard linear regression model to the training data. You can then make predictions on the testing data and calculate the RMSE. When you look at the model coefficients you find that all predictors have been assigned non-zero values. This means that every predictor is contributing to the model. This is certainly possible, but it's unlikely that all of the features are actually important for predicting consumption.

**10. Cars: Ridge regression**

Now let's fit a Ridge Regression model to the same data. You get a Ridge Regression model by giving a value of zero for elasticNetParam. An arbitrary value of 0.1 has been chosen for the regularization strength. Later you'll learn a way to choose good values for this parameter based on the data. When you calculate the RMSE on the testing data you find that it has increased slightly, but not enough to cause concern. Looking at the coefficients you see that they are all smaller than the coefficients for the standard linear regression model. They have been "shrunk".

**11. Cars: Lasso regression**

Finally let's build a Lasso Regression model, by setting elasticNetParam to 1. Again you find that the testing RMSE has increased, but not by a significant degree. Turning to the coefficients though, you see that something important has happened: all but two of the coefficients are now zero. There are effectively only two predictors left in the model: the dummy variable for a small type car and the linear density. Lasso Regression has identified the most important predictors and set the coefficients for the rest to zero. This tells us that we can get a good model by simply knowing whether or not a car is 'small' and it's linear density. A simpler model with no significant loss in performance.

**12. Regularization ? simple model**

Let's try out regularization on our flight duration model.