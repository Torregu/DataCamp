**1. One-Hot Encoding**

In the last chapter you saw how to use categorical variables in a model by simply converting them to indexed numerical values. In general this is not sufficient for a regression model. Let's see why.

**2. The problem with indexed values**

In the cars data the type column is categorical, with six levels: 'Midsize', 'Small', 'Compact', 'Sporty', 'Large' and 'Van'. Here you can see the number of times that each of those levels occurrs in the data. You used a string indexer to assign a numerical index to each level. However, there's a problem with the index: the numbers don't have any objective meaning. The index for 'Sporty' is 3. Does it make sense to do arithmetic on that index? No. For example, it wouldn't be meaningful to add the index for 'Sporty' to the index for 'Compact'. Nor would it be valid to compare those indexes and say that 'Sporty' is larger or smaller than 'Compact'. However, a regression model works by doing precisely this: arithmetic on predictor variables. You need to convert the index values into a format in which you can perform meaningful mathematical operations.

**3. Dummy variables**

The first step is to create a column for each of the levels. Effectively you then place a check in the column corresponding to the value in each row. So, for example, a record with a type of 'Sporty' would have a check in the 'Sporty' column. These new columns are known as 'dummy variables'.

**4. Dummy variables: binary encoding**

However, rather than having checks in the dummy variable columns it makes more sense to use binary values, where a one indicates the presence of the corresponding level. It might occur to you that the volume of data has exploded. You've gone from a single column of categorical values to six binary encoded dummy variables. If there were more levels then you'd have even more columns. This could get out of hand. However, the majority of the cells in the new columns contain zeros. The non-zero values, which actually encode the information, are relatively infrequent. This effect becomes even more pronounced if there are more levels. You can exploit this by converting the data into a sparse format.

**5. Dummy variables: sparse representation**

Rather than recording the individual values, the sparse representation simply records the column numbers and value for the non-zero values.

**6. Dummy variables: redundant column**

You can take this one step further. Since the categorical levels are mutually exclusive you can drop one of the columns. If type is not 'Midsize', 'Small', 'Compact', 'Sporty' or 'Large' then it must be 'Van'. The process of creating dummy variables is called 'One-Hot Encoding' because only one of the columns created is ever active or 'hot'. Let's see how this is done in Spark.

**7. One-hot encoding**

As you might expect, there's a class for doing one-hot encoding. Import the OneHotEncoder class from the feature sub-module. When instantiating the class you need to specify the names of the input and output columns. For car type the input column is the index we defined earlier. Choose 'type_dummy' as the output column name. Note that these arguments are given as lists, so it's possible to specify multiple columns if necessary. Next fit the encoder to the data. Check how many category levels have been identified: six as expected.

**8. One-hot encoding**

Now that the encoder is set up it can be applied to the data by calling the transform() method. Let's take a look at the results. There's now a type_dummy column which captures the dummy variables. As mentioned earlier, the final level is treated differently. No column is assigned to type Van because if a vehicle isn't one of the other types then it must be a Van. To have a separate dummy variable for Van would be redundant. The sparse format used to represent dummy variables looks a little complicated. Let's take a moment to dig into dense versus sparse formats.

**9. Dense versus sparse**

Suppose that you want to store a vector which consists mostly of zeros. You could store it as a dense vector, in which each of the elements of the vector is stored explicitly. This is wasteful though because most of those elements are zeros. A sparse representation is a much better alternative. To create a sparse vector you need to specify the size of the vector (in this case, eight), the positions which are non-zero (in this case, positions zero and five, noting that we start counting at zero) and the values for each of those positions, one and seven. Sparse representation is essential for effective one-hot encoding on large data sets.

**10. One-Hot Encode categoricals**

Let's try out one-hot encoding on the flights data.