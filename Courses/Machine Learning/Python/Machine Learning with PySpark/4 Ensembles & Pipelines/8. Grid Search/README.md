**1. Grid Search**

So far you've been using the default parameters for almost everything. You've built some decent models, but they could probably be improved by choosing better model parameters.

**2. Tuning**

There is no universal "best" set of parameters for a particular model. The optimal choice of parameters will depend on the data and the modeling goal. The idea is relatively simple, you build a selection of models, one for each set of model parameters. Then you evaluate those models and choose the best one.

**3. Cars revisited (again)**

You'll be looking at the fuel consumption regression model again.

**4. Fuel consumption with intercept**

You'll start by doing something simple, comparing a linear regression model with an intercept to one that passes through the origin. By default a linear regression model will always fit an intercept, but you're going to be explicit and specify the fitIntercept parameter as True. You fit the model to the training data and then calculate the RMSE for the testing data.

**5. Fuel consumption without intercept**

Next you repeat the process, but specify False for the fitIntercept parameter. Now you are creating a model which passes through the origin. When you evaluate this model you find that the RMSE is higher. So, comparing these two models you'd naturally choose the first one because it has a lower RMSE. However, there's a problem with this approach. Just getting a single estimate of RMSE is not very robust. It'd be better to make this comparison using cross-validation. You also have to manually build the models for the two different parameter values. It'd be great if that were automated.

**6. Parameter grid**

You can systematically evaluate a model across a grid of parameter values using a technique known as grid search. To do this you need to set up a parameter grid. You actually saw this in the previous lesson, where you simply created an empty grid. Now you are going to add points to the grid. First you create a grid builder and then you add one or more grids. At present there's just one grid, which takes two values for the fitIntercept parameter. Call the build() method to construct the grid. A separate model will be built for each point in the grid. You can check how many models this corresponds to and, of course, this is just two.

**7. Grid search with cross-validation**

Now you create a cross-validator object and fit it to the training data. This builds a bunch of models: one model for each fold and point in the parameter grid. Since there are two points in the grid and ten folds, this translates into twenty models. The cross-validator is going to loop through each of the points in the parameter grid and for each point it will create a cross-validated model using the corresponding parameter values. When you take a look at the average metrics attribute, you can see why the metric is given as a list: you get one average value for each point in the grid. The values confirm what you observed before: the model that includes an intercept is superior to the model without an intercept.

**8. The best model & parameters**

Our goal was to get the best model for the data. You retrieve this using the appropriately named bestModel attribute. But it's not actually necessary to work with this directly because the cross-validator object will behave like the best model. So, you can use it directly to make predictions on the testing data. Of course, you want to know what the best parameter value is and you can retrieve this using the explainParam() method. As expected the best value for the fitIntercept parameter is True. You can see this after the word "current" in the output.

**9. A more complicated grid**

It's possible to add more parameters to the grid. Here, in addition to whether or not to include an intercept, you're also considering a selection of values for the regularization parameter and the elastic net parameter. Of course, the more parameters and values you add to the grid, the more models you have to evaluate. Because each of these models will be evaluated using cross-validation, this might take a little while. But it will be time well spent, because the model that you get back will in principle be much better than what you would have obtained by just using the default parameters.

**10. Find the best parameters!**

Let's apply grid search on the flights and SMS models!