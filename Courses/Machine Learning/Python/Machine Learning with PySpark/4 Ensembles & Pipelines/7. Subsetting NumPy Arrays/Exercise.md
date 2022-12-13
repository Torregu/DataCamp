Subsetting NumPy Arrays
You've seen it with your own eyes: Python lists and `numpy` arrays sometimes behave differently. Luckily, there are still certainties in this world. For example, subsetting (using the square bracket notation on lists or arrays) works exactly the same. To see this for yourself, try the following lines of code in the IPython Shell:

```
x = ["a", "b", "c"]
x[1]

np_x = np.array(x)
np_x[1]
```

The script in the editor already contains code that imports `numpy` as `np`, and stores both the height and weight of the MLB players as `numpy` arrays.