**1. Comparison Operators**

Welcome back, budding Pythonistas! You have already learned a bit about different Python types.

**2. NumPy recap**

Among those was bool, short for boolean. Do you remember the bmi array from the intro course? Here it is again. Using the greater than sign, we could find out which values in bmi were above 23. Next, I used the resulting Boolean array to actually select that value. In this video, we'll dive a little deeper into the world of comparison operators, like this greater than sign. Comparison operators are operators that can tell how two Python values relate, and result in a boolean.

**3. Numeric comparisons**

In the simplest sense, you can use these operators on numbers. Say, for example, that you want to check if 2 is smaller than 3. You type 2 less than sign 3, and hit Enter. Because this is the case, you get True. You can also check if two values are equal, with a double equals sign. From this call, we see that 2 equals equals 3 gives us False. Makes sense, because 2 is not equal to 3. You can also make a combination of equality and smaller than. Have a look at this command that checks if 2 is smaller than or equal to 3. It's TRUE, but also 3 smaller than or equal to 3 is True. Of course, you can also use comparison operators directly on variables that represent these integers, like I did in this example.

**4. Other comparisons**

All these operators also work for strings. Let's check if "carl" is smaller than "chris". According to the alphabet, carl comes before chris, so the result is True. Do you think that comparing a string and an integer can work? Let's try to see if the integer 3 is smaller than the string chris. We get an error. Typically, Python can't tell how two objects with different types relate. Different numeric types, such as floats and integers, are exceptions as this example shows: no error this time. In general, always make sure that you make comparisons between objects of the same type.

**5. Other comparisons**

Another exception arises when we move back to the example we started with, where we compared the NumPy array, bmi, with an integer, 23. This works perfectly. NumPy figures out that you want to compare every element in bmi with 23, and returns corresponding booleans. Behind the scenes, NumPy builds a numpy array of the same size filled with the number 23, and then performs an element-wise comparison. This is concise yet very efficient code, something data scientists love!

**6. Comparators**

Have a look at this table that summarizes all comparison operators. You already know about some of these. They're all pretty straightforward, except for the last one maybe. The exclamation mark followed by an equals sign stands for inequality. It's basically the opposite of equality.

**7. Let's practice!**

Now head over to the exercises and train your comparison skills!