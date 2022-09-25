# height_in is available as a regular list

# + Import pandas
import pandas as pd

# + Save the dataset address in url_data
url_data = "https://github.com/Torregu/DataCamp/blob/main/Courses/Programming/" + \
           "Python/Introduction%20to%20Python/datasets/baseball.csv?raw=true"

# + Read the csv from url_data and then select the "Height" field, convert it into a list and finally save it in height_in
height_in = pd.read_csv(url_data, sep = ",", decimal = ".", header = 0).Height.to_list()

# Import numpy
import numpy as np

# Create a numpy array from height_in: np_height_in
np_height_in = np.array(height_in)

# Print out np_height_in
print(np_height_in)

# Convert np_height_in to m: np_height_m
np_height_m = np_height_in * 0.0254

# Print np_height_m
print(np_height_m)
