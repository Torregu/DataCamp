**1. Pandas, Part 1**

As a data scientist, you'll often be working with tons of data. The form of this data can vary greatly, but pretty often, you can boil it down to a tabular structure, that is, in the form of a table like in a spreadsheet. Let's have a look at some examples.

**2. Tabular dataset examples**

Suppose you're working in a chemical plant and have a ton of temperature measurements to analyze. This data can come in the following form:

**3. Tabular dataset examples**

every row is a measurement, or an observation, and for each observation, there are different variables. For each measurement, there's of course the temperature, but also the date and time of the measurement, and the location. Another example: you have collected information on the so-called BRICS countries, Brazil, Russia, India, China and South Africa. You can again build a table with this data,

**4. Tabular dataset examples**

like this. Each row is an observation and represents a country. Each observation has the same variables: the country name, the capital, the area in millions of square kilometers and the population in millions.

**5. Datasets in Python**

To start working on this data in Python, you'll need some kind of rectangular data structure. That's easy, we already know one! The 2D NumPy array, right? Well, it's an option, but not necessarily the best one. In the two examples we covered, there are different data types and NumPy arrays are not great at handling these. In the BRICS example,

**6. Datasets in Python**

the area and population are floats, while

**7. Datasets in Python**

the country and capital are strings, for example. Your datasets will typically comprise different data types, so we need a tool that's better suited for the job. To easily and efficiently handle this data, there's the Pandas package. Pandas is a high level data manipulation tool developed by Wes McKinney, built on the NumPy package. Compared to NumPy, it's more high level, making it very interesting for data scientists all over the world. In pandas, we store the tabular data like the brics table here in an object called a DataFrame. Have a look at the Pandas DataFrame version of the BRICS data I showed you before:

**8. DataFrame**

You see a similar structure: the rows represent the observations, and the columns represent the variables. Also notice that each row has a unique row label: BR for Brazil, RU for Russia, and so on. The columns, or variables, also have labels: country, population, and so on. Notice that the values in the different columns have different types. This is all great news, but how can we create this DataFrame in the first place? Well, there are different ways.

**9. DataFrame from Dictionary**

First of all, you can build it manually, starting from a dictionary. Using the distinctive curly brackets, we create key value pairs. The keys are the column labels, and the values are the corresponding columns, in list form. After importing the pandas package as pd, you can create a DataFrame from the dictionary using pd (dot) DataFrame.

**10. DataFrame from Dictionary (2)**

If you check out brics now, we're almost there. Pandas assigned some automatic row labels, 0 up to 4. To specify them manually, you can set the index attribute of brics to a list with the correct labels. The resulting brics DataFrame is the same one as you saw before. Using a dictionary approach is fine, but what if you're working with tons of data, which is typically the case as a data scientist? Well, you won't build the DataFrame manually. Instead, you import data from an external file that contains all this data.

**11. DataFrame from CSV file**

Suppose the brics data that I showed you before comes in the form of a CSV file called brics.csv. By the way, CSV is short for comma separated values.

**12. DataFrame from CSV file**

Let's try to import this data into Python using Pandas read_csv function. You pass the path to the csv file as an argument. If you now print brics, there's still something wrong. The row labels are seen as a column in their own right. To solve this, we'll have to tell the read_csv function that the first column contains the row indexes. You do this by setting the index_col argument, like this.

**13. DataFrame from CSV file**

This time brics contains the DataFrame we started with in this video. It nicely contains the row and column labels. The read_csv function features many more arguments that allow you to customize your data import, make sure to check out its documentation

**14. Let's practice!**

Now head over to the exercises, to experiment with building DataFrames yourself!