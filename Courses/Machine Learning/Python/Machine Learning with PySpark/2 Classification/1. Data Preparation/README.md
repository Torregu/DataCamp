**1. Data Preparation**

In this lesson you are going to learn how to prepare data for building a Machine Learning model.

**2. Do you need all of those columns?**

You'll be working with the cars data again. This is what the data look like at present. There are columns for the maker and model, the origin (either USA or non-USA), the type, number of cylinders, engine size, weight, length, RPM and fuel consumption. The models that you'll be building will depend on the physical characteristics of the cars rather than the model names or manufacturers, so you'll remove the corresponding columns from the data.

**3. Dropping columns**

There are two approaches to doing this: either you can drop() the columns that you don't want or you can select() the fields which you do want to retain. Either way, the resulting data does not include those columns.

**4. Filtering out missing data**

Earlier you saw that there is a missing value in the cylinders column. Let's check to see how many other missing values there are. You'll use the filter() method and provide a logical predicate using SQL syntax which identifies NULL values. Then the count() method tells you how many records there are remaining. Just one. In this case it makes sense to simply remove the record with the missing value. There are a couple of ways that you could to do this. You could use the filter() method again with a different predicate. Or you could take a more aggressive approach and use the dropna() method to drop all records with missing values in any column. However, this should be done with care because it could result in the loss of a lot of otherwise useful data. You've now stripped down the data to what's needed to build a model.

**5. Mutating columns**

At present the weight and length columns are in units of pounds and inches respectively. You'll use the withColumn() method to create a new mass column in units of kilograms. The round() function is used to limit the precision of the result. You can also use the withColumn() method to replace the existing length column with values in meters. You now have mass and length in metric units.

**6. Indexing categorical data**

The type column consists of strings which represent six categories of vehicle type. You'll need to transform those strings into numbers. You do this using an instance of the StringIndexer class. In the constructor you provide the name of the string input column and a name for the new output column to be created. The indexer is first fit to the data, creating a StringIndexerModel. During the fitting process the distinct string values are identified and an index is assigned to each value. The model is then used to transform the data, creating a new column with the index values. By default the index values are assigned according to the descending relative frequency of each of the string values. Midsize is most common, so it gets an index of zero. Small is next most common, so its index is one. And so on. It's possible to choose different strategies for assigning index values by specifying the stringOrderType argument. Rather than using frequency of occurrence, strings can be ordered alphabetically. It's also possible to choose between ascending and descending order.

**7. Indexing country of origin**

You'll be building a classifier to predict whether or not a car was manufactured in the USA. So the origin column also needs to be converted from strings into numbers.

**8. Assembling columns**

The final step in preparing the cars data is to consolidate the various input columns into a single column. This is necessary because the Machine Learning algorithms in Spark operate on a single vector of predictors, although each element in that vector may consist of multiple values. To illustrate the process you'll start with just a pair of features, cylinders and size. First you create an instance of the VectorAssembler class, providing it with the names of the columns that you want to consolidate and the name of the new output column. The assembler is then used to transform the data. Taking a look at the relevant columns you see that the new "features" column consists of values from the cylinders and size columns consolidated into a vector. Ultimately you are going to assemble all of the predictors into a single column.

**9. Let's practice!**

Let's try out what we have learned on the SMS and flights data.