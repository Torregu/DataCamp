# baseball is available as a regular list of lists
# updated is available as 2D numpy array

# + Import pandas
import pandas as pd

# + Save the dataset address in url_data
url_data = "https://github.com/Torregu/DataCamp/blob/main/Courses/Programming/" + \
           "Python/Introduction%20to%20Python/datasets/baseball.csv?raw=true"

# + Read the csv from url_data then select the fields "Height" "Weight" "Age", convert the entries into 'lists' and create a list of these lists
baseball = pd.read_csv(url_data, sep = ",", decimal = ".", header = 0)[["Height", "Weight", "Age"]].values.tolist()

# + Read the update.csv file and save it in a new variable called updated
updated = pd.read_csv("https://github.com/Torregu/DataCamp/blob/main/Courses/Programming/" + \
		      "Python/Introduction%20to%20Python/datasets/update.csv?raw=true", header = None).values 
# + .to_numpy may also be used instead of .values

# Import numpy package
import numpy as np

# Create np_baseball (3 cols)
np_baseball = np.array(baseball)

# Print out addition of np_baseball and updated
print(np_baseball + updated)

# Create numpy array: conversion
conversion = np.array([0.0254, 0.453592, 1])

# Print out product of np_baseball and conversion
print(np_baseball * conversion)
                  









