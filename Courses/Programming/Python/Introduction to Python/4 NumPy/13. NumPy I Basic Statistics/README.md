**1. NumPy: Basic Statistics**

A typical first step in analyzing your data,

**2. Data analysis**

is getting to know your data in the first place. For the NumPy arrays from before, this is pretty easy, because it isn't a lot of data. However, as a data scientist, you'll be crunching thousands, if not millions or billions of numbers.

**3. City-wide survey**

Imagine you conduct a city-wide survey where you ask 5000 adults about their height and weight. You end up with something like this: a 2D numpy array, which I named np_city, that has 5000 rows, corresponding to the 5000 people, and two columns, corresponding to the height and the weight. Simply staring at these numbers like a zombie won't give you any insights. What you can do, though, is generate summarizing statistics about your data.

**4. NumPy**

Aside from an efficient data structure for number crunching, it happens that NumPy is also good at doing these kinds of things. For starters, you can try to find out the average height of these 5000 people, with NumPy's mean function. Because it's a function from the NumPy package, don't forget to start with np.. Of course, I first had to do a subsetting operation to get the height column from the 2D array. It appears that on average, people are 1-point-75 meters tall. What about the median height? This is the height of the middle person if you sort all persons from small to tall. Instead of writing complicated python code to figure this out, you can simply use NumPy's median function: You can do similar things for the weight column in np_city. Often, these summarizing statistics will provide you with a "sanity check" of your data. If you end up with a average weight of 2000 kilograms, your measurements are most likely incorrect. Apart from mean and median, there's also other functions,

**5. NumPy**

like corrcoeff to check if for example height and weight are correlated, and std, for standard deviation. NumPy also features more basic functions, such as sum and sort, which also exist in the basic Python distribution. However, the big difference here is speed. Because NumPy enforces a single data type in an array, it can drastically speed up the calculations.

**6. Generate data**

Just a sidenote here: If you're wondering how I came up with the data in this video: We simulated it with NumPy functions! I sampled two random distributions 5000 times to create the height and weight arrays, and then used column_stack to paste them together as two columns. Another awesome thing that NumPy can do! Another great tool to get some sense of your data is to visualize it, but that's something for the next course also.

**7. Let's practice!**

First, head over to the exercises to learn how to explore your NumPy arrays!
