# heights and positions are available as lists

# + Import pandas
import pandas as pd

# + Save the dataset address in url_data
url_data = "https://github.com/Torregu/DataCamp/blob/main/Courses/Programming/" + \
           "Python/Introduction%20to%20Python/datasets/fifa.csv?raw=true"

# + Read the csv from url_data then select the fields "Height" "Weight", 
# + convert them into 'lists' and create a list of these lists
heights, positions = \
    pd.read_csv(
        url_data, sep = ",", decimal = ".", 
        header = 0, skipinitialspace = True
    )[["height", "position"]].transpose().values.tolist()

# Import numpy
import numpy as np

# Convert positions and heights to numpy arrays: np_positions, np_heights
np_positions = np.array(positions); np_heights = np.array(heights)

# Heights of the goalkeepers: gk_heights
gk_heights = np_heights[np_positions == "GK"]

# Heights of the other players: other_heights
other_heights = np_heights[np_positions != "GK"]

# Print out the median height of goalkeepers. Replace 'None'
print("Median height of goalkeepers: " + str(np.median(gk_heights)))

# Print out the median height of other players. Replace 'None'
print("Median height of other players: " + str(np.median(other_heights)))