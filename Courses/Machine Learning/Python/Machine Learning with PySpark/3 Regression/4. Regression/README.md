**1. Regression**

In the previous lesson you learned how to one-hot encode categorical features, which is essential for building regression models. In this lesson you'll find out how to build a regression model to predict numerical values.

**2. Consumption versus mass: scatter**

Returning to the cars data, suppose you wanted to predict fuel consumption using vehicle mass. A scatter plot is a good way to visualize the relationship between those two variables. Only a subset of the data are included in this plot, but it's clear that consumption increases with mass. However the relationship is not perfectly linear: there's scatter for individual points. A model should describe the average relationship of consumption to mass, without necessarily passing through individual points.

**3. Consumption versus mass: fit**

This line, for example, might describe the underlying trend in the data.

**4. Consumption versus mass: alternative fits**

But there are other lines which could equally well describe that trend. How do you choose the line which best describes the relationship?

**5. Consumption versus mass: residuals**

First we need to define the concept of residuals. The residual is the difference between the observed value and the corresponding modeled value. The residuals are indicated in the plot as the vertical lines between the data points and the model line. The best model would somehow make these residuals as small as possible.

**6. Loss function**

Out of all possible models, the best model is found by minimizing a loss function, which is an equation that describes how well the model fits the data. This is the equation for the mean squared error loss function. Let's quickly break it down.

**7. Loss function: Observed values**

You've got the observed values, y_i, …

**8. Loss function: Model values**

and the modeled values, \hat{y}_i. The difference between these is the residual. The residuals are squared and then summed together…

**9. Loss function: Mean**

before finally dividing through by the number of data points to give the mean or average. By minimizing the loss function you are effectively minimizing the average residual or the average distance between the observed and modeled values. If this looks a little complicated, don't worry: Spark will do all of the maths for you.

**10. Assemble predictors**

Let's build a regression model to predict fuel consumption using three predictors: mass, number of cylinders and vehicle type, where the last is a categorical which we've already one-hot encoded. As before the first step towards building a model is to take our predictors and assemble them into a single column called 'features'. The data are then randomly split into training and testing sets.

**11. Build regression model**

The model is created using the LinearRegression class which is imported from the regression module. By default this class expects to find the target data in a column called "label". Since you are aiming to predict the "consumption" column you need to explicitly specify the name of the label column when creating a regression object. Next train the model on the training data using the fit() method. The trained model can then be used to making predictions on the testing data using the transform() method.

**12. Examine predictions**

Comparing the predicted values to the known values from the testing data you'll see that there is reasonable agreement. It's hard to tell from a table though. A plot gives a clearer picture. The dashed diagonal lie represents perfect prediction. Most of the points lie close to this line, which is good.

**13. Calculate RMSE**

It's useful to have a single number which summarizes the performance of a model. For classifiers there are a variety of such metrics. The Root Mean Squared Error is often used for regression models. It's the square root of the Mean Squared Error, which you've already encountered, and corresponds to the standard deviation of the residuals. The metrics for a classifier, like accuracy, precision and recall, are measured on an absolute scale where it's possible to immediately identify values that are "good" or "bad". Values of RMSE are relative to the scale of the value that you're aiming to predict, so interpretation is a little more challenging. A smaller RMSE, however, always indicates better predictions.

**14. Consumption versus mass: intercept**

Let's examine the model. The intercept is the value predicted by the model when all predictors are zero. On the plot this is the point where the model line intersects the vertical dashed line.

**15. Examine intercept**

You can find this value for the model using the intercept attribute. This is the predicted fuel consumption when both mass and number of cylinders are zero and the vehicle type is 'Van'. Of course, this is an entirely hypothetical scenario: no vehicle could have zero mass!

**16. Consumption versus mass: slope**

There's a slope associated with each of the predictors too, which represents how rapidly the model changes when that predictor changes.

**17. Examine Coefficients**

The coefficients attribute gives you access to those values. There's a coefficient for each of the predictors. The coefficients for mass and number of cylinders are positive, indicating that heavier cars with more cylinders consume more fuel. These coefficients also represent the rate of change for the corresponding predictor. For example, the coefficient for mass indicates the change in fuel consumption when mass increases by one unit. Remember that there's no dummy variable for Van? The coefficients for the type dummy variables are relative to Vans. These coefficients should also be interpreted with care: if you are going to compare the values for different vehicle types then this needs to be done for fixed mass and number of cylinders. Since all of the type dummy coefficients are negative, the model indicates that, for a specific mass and number of cylinders, all other vehicle types consume less fuel than a Van. Large vehicles have the most negative coefficient, so it's possible to say that, for a specific mass and number of cylinders, Large vehicles are the most fuel efficient.

**18. Regression for numeric predictions**

You've covered a lot of ground in this lesson. Let's apply what you've learned to the flights data.