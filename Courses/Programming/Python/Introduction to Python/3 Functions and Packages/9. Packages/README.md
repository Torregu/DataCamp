**1. Packages**

By now, I hope you're convinced

**2. Motivation**

that python functions and methods are extremely powerful: you can basically use other people's code to solve your own problems. That's amazing! However, adding all functions and methods that have been written up to now to the same Python distribution would be a mess. There would be tons and tons of code in there, that you'll never use. Also, maintaining all of this code would be a real pain.

**3. Packages**

This is where packages come into play. You can think of packages as a directory of Python scripts. Each such script is a so-called module. These modules specify functions, methods and new Python types aimed at solving particular problems. There are thousands of Python packages available from the internet. Among them are packages for data science: there's NumPy to efficiently work with arrays, Matplotlib for data visualization, and scikit-learn for machine learning. Not all these packages are available in Python by default.

**4. Install package**

To use Python packages, you'll first have to install them on your own system, and then put code in your script to tell Python that you want to use these packages. Datacamp already has all necessary packages installed for you, but if you want to install them on your own system, you'll want to use pip, a package maintenance system for Python. If you go to this URL, you can download the file get-pip-dot-py. Next, you go to the terminal, and execute python3 get-pip-dot-py. Now you can use pip to actually install a Python package of your choosing. Suppose we want to install the numpy package, which you'll learn about in the next chapter. You type pip3 install numpy. You have to use the commands python3 and pip3 here to tell our system that we're working with Python version 3. Now that the package is installed, you can actually start using it in one of your Python scripts.

**5. Import package**

Before you can do this, you should import the package, or a specific module of the package. You can do this with the import statement. To import the entire numpy package, you can do import numpy, like this. A commonly used function in NumPy is array. It takes a list as input. Simply calling the array function like this, will generate an error. To refer to the array function from the numpy package, you'll need this. This time it works. The NumPy array is very useful to do data science, but more on that later. Using this numpy dot prefix all the time can become pretty tiring, so you can also import the package and refer to it with a different name. You can do this by extending your import statement with as, like this. Now, instead of numpy-dot-array, you'll have to use np-dot-array to use NumPy's array function. There are cases in which you only need one specific function of a package. Python allows you to make this explicit in your code. Suppose that we only want to use the array function from the NumPy package. Instead of doing import numpy, you can instead do from numpy import array, like this. This time, you can simply call the array function like this, no need to use numpy dot here. This from import version to use specific parts of a package can be useful to limit the amount of coding, but you're also loosing some of the context.

**6. from numpy import array**

Suppose you're working in a long Python script. You import the array function from numpy at the very top, and way later, you actually use this array function. Somebody else who's reading your code might have forgotten that this array function is a specific NumPy function; it's not clear from the function call.

**7. import numpy**

In that respect, the more standard import numpy call is preferred: In this case, your function call is numpy-dot-array, making it very clear that you're working with NumPy.

**8. Let's practice!**

Off to the exercises now, where you can practice different ways of importing packages and modules yourself. You're well on your way to becoming a pythonista data science ninja.
