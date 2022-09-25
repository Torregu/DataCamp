# baseball is available as a regular list of lists

# + Import pandas
import pandas as pd

# + Save the dataset address in url_data
url_data = "https://github.com/Torregu/DataCamp/blob/main/Courses/Programming/" + \
           "Python/Introduction%20to%20Python/datasets/baseball.csv?raw=true"

# + Read the csv from url_data then select the fields "Height" "Weight", convert the entries into lists and create a list of these lists
baseball = pd.read_csv(url_data, sep = ",", decimal = ".", header = 0)[["Height", "Weight"]].values.tolist()

# Import numpy package
import numpy as np

# Create a 2D numpy array from baseball: np_baseball
np_baseball = np.array(baseball)

# Print out the shape of np_baseball
print(np_baseball.shape)