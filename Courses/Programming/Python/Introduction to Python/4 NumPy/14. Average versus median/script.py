# np_baseball is available

# + Import pandas
import pandas as pd

# + Save the dataset address in url_data
url_data = "https://github.com/Torregu/DataCamp/blob/main/Courses/Programming/" + \
           "Python/Introduction%20to%20Python/datasets/baseball.csv?raw=true"

# + Read the csv from url_data then select the fields "Height" "Weight" "Age", convert the entries into 'lists'
baseball = pd.read_csv(url_data, sep = ",", decimal = ".", header = 0)[["Height", "Weight", "Age"]].to_numpy

# Import numpy
import numpy as np

# Create np_height_in from np_baseball
np_height_in = np_baseball[:, 0]

# Print out the mean of np_height_in
print(np.mean(np_height_in))

# Print out the median of np_height_in
print(np.median(np_height_in))