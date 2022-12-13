**1. NumPy**

Wow, you've done well and by now, you are aware

**2. Lists Recap**

that the Python list is pretty powerful. A list can hold any type and can hold different types at the same time. You can also change, add and remove elements. This is wonderful, but one feature is missing, a feature that is super important for aspiring data scientists as yourself. When analyzing data, you'll often want to carry out operations over entire collections of values, and you want to do this fast. With lists, this is a problem.

**3. Illustration**

Let's retake the heights of your family and yourself. Suppose you've also asked for everybody's weight. It's not very polite, but everything for science, right? You end up with two lists, height, and weight. The first person is 1-point-73 meters tall and weighs 65-point-4 kilograms. If you now want to calculate the Body Mass Index for each family member, you'd hope that this call can work, making the calculations element-wise. Unfortunately, Python throws an error, because it has no idea how to do calculations on lists. You could solve this by going through each list element one after the other, and calculating the BMI for each person separately, but this is terribly inefficient and tiresome to write.

**4. Solution: NumPy**

A way more elegant solution is to use NumPy, or Numeric Python. It's a Python package that, among others, provides a alternative to the regular python list: the NumPy array. The NumPy array is pretty similar to the list, but has one additional feature: you can perform calculations over entire arrays. It's really easy, and super-fast as well. The NumPy package is already installed on DataCamp's servers, but if you want to work with it on your own system, go to the command line and execute pip3 install numpy. Next,

**5. NumPy**

to actually use NumPy in your Python session, you can import the numpy package, like this. Let's start with creating a numpy array. You do this with NumPy's array function: the input is a regular Python list. I'm using array twice here, to create NumPy versions of the height and weight lists from before: np_height and np_weight: Let's try to calculate everybody's BMI with a single call again. This time, it worked fine: the calculations were performed element-wise. The first person's BMI was calculated by dividing the first element in np_weight by the square of the first element in np_height, the second person's BMI was calculated with the second height and weight elements, and so on.

**6. Comparison**

Let's do a quick comparison here. First, we tried to do calculations with regular lists, like this, but this gave us an error, because Python doesn't now how to do calculations with lists like we want them to. Next, these regular lists where converted to NumPy arrays. The same operations now work without any problem: NumPy knows how to work with arrays as if they are single values, which is pretty awesome if you ask me.

**7. NumPy: remarks**

You should still pay attention, though. First of all, NumPy can do all of this so easily because it assumes that your NumPy array can only contain values of a single type. It's either an array of floats, either an array of booleans, and so on. If you do try to create an array with different types, like this for example, the resulting NumPy array will contain a single type, string in this case. The boolean and the float were both converted to strings. Second, you should know that a NumPy array is simply a new kind of Python type, like the float, string and list types from before. This means that it comes with its own methods, which can behave differently than you'd expect.

**8. NumPy: remarks**

Take this Python list and this numpy array, for example. If you do python_list + python_list, the list elements are pasted together, generating a list with 6 elements. If you do this with the numpy arrays, on the other hand, Python will do an element-wise sum of the arrays. Just make sure to pay attention when you're juggling around with different Python types, because the outcomes can differ a lot! Apart from these subtleties,

**9. NumPy Subsetting**

you can work with NumPy arrays pretty much the same as you can with regular Python lists. When you want to get elements from your array, for example, you can use square brackets. Suppose you want to get the bmi for the second person, so at index 1. This will do the trick. Specifically for NumPy, there's also another way to do list subsetting: using an array of booleans. Say you want to get all BMI values in the bmi array that are over 23. A first step is using the greater than sign, like this: The result is a NumPy array containing booleans: True if the corresponding bmi is above 23, False if it's below. Next, you can use this boolean array inside square brackets to do subsetting. Only the elements in bmi that are above 23, so for which the corresponding boolean value is True, is selected. There's only one BMI that's above 23, so we end up with a NumPy array with a single value, that specific BMI. Using the result of a comparison to make a selection of your data is a very common way to get surprising insights.

**10. Let's practice!**

Learn all about it and the other NumPy basics in the exercises!
