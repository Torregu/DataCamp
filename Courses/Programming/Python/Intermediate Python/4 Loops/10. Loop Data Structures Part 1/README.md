**1. Loop Data Structures Part 1**

So you already saw how looping over lists and strings works, but what about those other data structures, such as dictionaries and NumPy arrays? Well, in both cases, you can use a similar for loop construct, but the way you define the "sequence" over which you're iterating will differ depending on the data structure.

**2. Dictionary**

Let's go back to our "world" dictionary, containing country names as keys and corresponding populations as values, shown here. How should we approach this if we want to print out the key and corresponding value for each key:value pair on a new line? Maybe like this, simply hoping that the key and value are correctly set? Unfortunately, we get an error. Python sees that you expect two values in every iteration, like enumerate did before when you wanted the index and value from a list element, but in this case, Python has no idea how to go about this.

**3. Dictionary**

We can fix this by calling the method items() on world. This will generate a key and value in each iteration. If you have a look at the printout, there's something strange: afghanistan comes first in world, but not in the printout. That's because dictionaries are inherently unordered: the order in which they're iterated over is not fixed, at least in Python 3.5.

**4. Dictionary**

The names key and value are totally arbitrary by the way, I can also call these k and v, like here. The order does matter though. The first variable gets the key, the second one the value.

**5. NumPy Arrays**

Now for the NumPy array, that "data science equivalent" of the Python list I've been talking about quite a bit. Let's start from the bmi array that you already know -- here it is. It's pretty straightforward: the most basic for loop you can imagine already does the trick.

**6. 2D NumPy Arrays**

Let's see if this also works with a 2D NumPy array. Here, I created meas, by combining the np_height and np_weight arrays. If we want to print out each element in this 2D array separately, the same basic for loop won't do the trick though. The 2D array is actually built up from an array of 1D arrays. The for loop simply prints out an entire array on each iteration.

**7. 2D NumPy Arrays**

To get every element of an array, you can use a NumPy function called nditer(). The input is the array you want to iterate over, meas in our case. This time, we get 10 printouts, first all the heights, then all the weights. Nice!

**8. Recap**

To recap: if you want to iterate over key-value pairs in a dictionary, use the items() method on the dictionary to define the sequence in the for loop. If you want to iterate over all elements in a NumPy array, you should use the nditer() function to specify the sequence. Pay attention here: dictionaries require a method, NumPy arrays use a function.

**9. Let's practice!**

Before you get confused, head over to some exercises and enhance your looping skills!