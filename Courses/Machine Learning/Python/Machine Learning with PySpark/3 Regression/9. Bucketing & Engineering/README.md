**1. Bucketing & Engineering**

The largest improvements in Machine Learning model performance are often achieved by carefully manipulating features. In this lesson you'll be learning about a few approaches to doing this.

**2. Bucketing**

Let's start with bucketing. It's often convenient to convert a continuous variable, like age or height, into discrete values. This can be done by assigning values to buckets or bins with well defined boundaries. The buckets might have uniform or variable width.

**3. Bucketing heights**

Let's make this more concrete by thinking about observations of people's heights. If you plot the heights on a histogram then it seems reasonable…

**4. Bucketing heights**

… to divide the heights up into ranges. To each of these ranges…

**5. Bucketing heights**

… you assign a label. Then you create a new column in the data…

**6. Bucketing heights**

… with the appropriate labels. The resulting categorical variable is often a more powerful predictor than the original continuous variable.

**7. RPM histogram**

Let's apply this to the cars data. Looking at the distribution of values for RPM you see that the majority lie in the range between 4500 and 6000. There are a few either below or above this range. This suggests that it would make sense to bucket these values according to those boundaries.

**8. RPM buckets**

You create a bucketizer object, specifying the bin boundaries as the "splits" argument and also providing the names of the input and output columns. You then apply this object to the data by calling the transform() method.

**9. RPM buckets**

The result has a new column with the discrete bucket values. The three buckets have been assigned index values zero, one and two, corresponding to the low, medium and high ranges for RPM.

**10. One-hot encoded RPM buckets**

As you saw earlier, before you can use these index values in a regression model, they first need to be one-hot encoded. The low and medium RPM ranges are mapped to distinct dummy variables, while the high range is the reference level and does not get a separate dummy variable.

**11. Model with bucketed RPM**

Let's look at the intercept and coefficients for a model which predicts fuel consumption based on bucketed RPM data. The intercept tells us what the fuel consumption is for the reference level, which is the high RPM bucket. To get the consumption for the low RPM bucket you add the first coefficient to the intercept. Similarly, to find the consumption for the medium RPM bucket you add the second coefficient to the intercept.

**12. More feature engineering**

There are many other approaches to engineering new features. It's common to apply arithmetic operations to one or more columns to create new features.

**13. Mass & Height to BMI**

Returning to the heights data. Suppose that we also had data for mass.

**14. Mass & Height to BMI**

Then it might be perfectly reasonable to engineer a new column for BMI. Potentially BMI might be a more powerful predictor than either height or mass in isolation.

**15. Engineering density**

Let's apply this idea to the cars data. You have columns for mass and length. Perhaps some combination of the two might be even more meaningful. You can create different forms of density by dividing the mass through by the first three powers of length. Since you only have the length of the vehicles but not their width or height, the length is being used as a proxy for these missing dimensions. In so doing you create three new predictors. The first density represents how mass changes with vehicle length. The second and third densities approximate how mass varies with the area and volume of the vehicle. Which of these will be meaningful for our model? Right now you don't know, you're just trying things out. Powerful new features are often discovered through trial and error. In the next lesson you'll learn about a technique for selecting only the relevant predictors in a regression model.

**16. Let's engineer some features!**

Right now though, let's apply what you've learned to the flights data.