**1. Ensemble**

You now know how to choose a good set of parameters for any model using cross-validation and grid search. In the final lesson you're going to learn about how models can be combined to form a collection or "ensemble" which is more powerful than each of the individual models alone.

**2. What's an ensemble?**

Simply put, an ensemble model is just a collection of models. An ensemble model combines the results from multiple models to produce better predictions than any one of those models acting alone. The concept is based on the idea of the "Wisdom of the Crowd", which implies that the aggregated opinion of a group is better than the opinions of the individuals in that group, even if the individuals are experts.

**3. Ensemble diversity**

As the quote suggests, for this idea to be true, there must be diversity and independence in the crowd. This applies to models too: a successful ensemble requires diverse models. It does not help if all of the models in the ensemble are similar or exactly the same. Ideally each of the models in the ensemble should be different.

**4. Random Forest**

A Random Forest, as the name implies, is a collection of trees. To ensure that each of those trees is different, the Decision Tree algorithm is modified slightly: - each tree is trained on a different random subset of the data and - within each tree a random subset of features is used for splitting at each node. The result is a collection of trees where no two trees are the same. Within the Random Forest model, all of the trees operate in parallel.

**5. Create a forest of trees**

Let's go back to the cars classifier yet again. You create a Random Forest model using the RandomForestClassifier class from the classification sub-module. You can select the number of trees in the forest using the numTrees parameter. By default this is twenty, but we'll drop that to five so that the results are easier to interpret. As is the case with any other model, the Random Forest is fit to the training data.

**6. Seeing the trees**

Once the model is trained it's possible to access the individual trees in the forest using the trees attribute. You would not normally do this, but it's useful for illustrative purposes. There are precisely five trees in the forest, as specified. The trees are all different, as can be seen from the varying number of nodes in each tree. You can then make predictions using each tree individually.

**7. Predictions from individual trees**

Here are the predictions of individual trees on a subset of the testing data. Each row represents predictions from each of the five trees for a specific record. In some cases all of the trees agree, but there is often some dissent amongst the models. This is precisely where the Random Forest works best: where the prediction is not clear cut. The Random Forest model creates a consensus prediction by aggregating the predictions across all of the individual trees.

**8. Consensus predictions**

You don't need to worry about these details though because the transform() method will automatically generate a consensus prediction column. It also creates a probability column which assigns aggregate probabilities to each of the outcomes.

**9. Feature importances**

It's possible to get an idea of the relative importance of the features in the model by looking at the featureImportances attribute. An importance is assigned to each feature, where a larger importance indicates a feature which makes a larger contribution to the model. Looking carefully at the importances we see that feature 4 (rpm) is the most important, while feature 0 (the number of cylinders) is the least important.

**10. Gradient-Boosted Trees**

The second ensemble model you'll be looking at is Gradient-Boosted Trees. Again the aim is to build a collection of diverse models, but the approach is slightly different. Rather than building a set of trees that operate in parallel, now we build trees which work in series. The boosting algorithm works iteratively. First build a decision tree and add to the ensemble. Then use the ensemble to make predictions on the training data. Compare the predicted labels to the known labels. Now identify training instances where predictions were incorrect. Return to the start and train another tree which focuses on improving the incorrect predictions. As trees are added to the ensemble its predictions improve because each new tree focuses on correcting the shortcomings of the preceding trees.

**11. Boosting trees**

The class for the Gradient-Boosted Tree classifier is also found in the classification sub-module. After creating an instance of the class you fit it to the training data.

**12. Comparing trees**

You can make an objective comparison between a plain Decision Tree and the two ensemble models by looking at the values of AUC obtained by each of them on the testing data. Both of the ensemble methods score better than the Decision Tree. This is not too surprising since they are significantly more powerful models. It's also worth noting that these results are based on the default parameters for these models. It should be possible to get even better performance by tuning those parameters using cross-validation.

**13. Ensemble all of the models!**

In the final set of exercises you'll try out ensemble methods on the flights data.