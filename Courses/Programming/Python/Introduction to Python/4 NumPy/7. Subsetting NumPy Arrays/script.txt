# height_in and weight_lb are available as a regular lists

# + Import pandas
import pandas as pd

# + Save the dataset address in url_data
url_data = "https://github.com/Torregu/DataCamp/blob/main/Courses/Programming/" + \
           "Python/Introduction%20to%20Python/datasets/baseball.csv?raw=true"

# + Read the csv from url_data then select the fields "Height" "Weight" and convert them into lists and create a list of these lists
height_in, weight_lb = pd.read_csv(url_data, sep = ",", decimal = ".", header = 0)[["Height", "Weight"]].transpose().values.tolist()

# Import numpy
import numpy as np

# Store weight and height lists as numpy arrays
np_weight_lb = np.array(weight_lb)
np_height_in = np.array(height_in)

# Print out the weight at index 50
print(np_weight_lb[50])

# Print out sub-array of np_height_in: index 100 up to and including index 110
print(np_height_in[100:111])