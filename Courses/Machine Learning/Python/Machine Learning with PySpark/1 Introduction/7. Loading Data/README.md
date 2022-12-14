**1. Loading Data**

In this lesson you'll look at how to read data into Spark.

**2. DataFrames: A refresher**

Spark represents tabular data using the DataFrame class. The data are captured as rows (or "records"), each of which is broken down into one or more columns (or "fields"). Every column has a name and a specific data type. Some selected methods and attributes of the DataFrame class are listed here. The count() method gives the number of rows. The show() method will display a subset of rows. The printSchema() method and the dtypes attribute give different views on column types. This is really scratching the surface of what's possible with a DataFrame. You can find out more by consulting the extensive documentation.

**3. CSV data for cars**

CSV is a common format for storing tabular data. For illustration we'll be using a CSV file with characteristics for a selection of motor vehicles. Each line in a CSV file is a new record and within each record, fields are separated by a delimiter character, which is normally a comma. The first line is an optional header record which gives column names.

**4. Reading data from CSV**

Our session object has a "read" attribute which, in turn, has a csv() method which reads data from a CSV file and returns a DataFrame. The csv() method has one mandatory argument, the path to the CSV file. There are a number of optional arguments. We'll take a quick look at some of the most important ones. The header argument specifies whether or not there is a header record. The sep argument gives the field separator, which is a comma by default. There are two arguments which pertain to column data types, schema and inferSchema. Finally, the nullValue argument gives the placeholder used to indicate missing data. Let's take a look at the data we've just loaded.

**5. Peek at the data**

Using the show() method we can take a look at a slice of the DataFrame. The csv() method has split the data into rows and columns and picked up the column names from the header record. Looks great, doesn't it? Unfortunately there's a small snag. Before we unravel that snag, it's important to note that the first value in the cylinder column is not a number. It's the string "NA" which indicates missing data.

**6. Check column types**

If you check the column data types then you'll find that they are all strings. That doesn't make sense since the last six columns are clearly numbers! However, this is the expected behavior: the csv() method treats all columns as strings by default. You need to do a little more work to get the correct column types. There are two ways that you can do this: infer the column types from the data or manually specify the types.

**7. Inferring column types from data**

It's possible to reasonably deduce the column types by setting the inferSchema argument to True. There is a price to pay though: Spark needs to make an extra pass over the data to figure out the column types before reading the data. If the data file is big then this will increase load time notably. Using this approach all of the column types are correctly identified except for cylinder. Why? The first value in this column is "NA", so Spark thinks that the column contains strings.

**8. Dealing with missing data**

Missing data in CSV files are normally represented by a placeholder like the "NA" string. You can use the nullValue argument to specify the placeholder. It's always a good idea to explicitly define the missing data placeholder. The nullValue argument is case sensitive, so it's important to provide it in exactly the same form as it appears in the data file.

**9. Specify column types**

If inferring column type is not successful then you have the option of specifying the type of each column in an explicit schema. This also makes it possible to choose alternative column names.

**10. Final cars data**

This is what the final cars data look like. Note that the missing value at the top of the cylinders column is indicated by the special null constant.

**11. Let's load some data!**

You're ready to use what you've learned to load data from CSV files!