
**1. Functions**

In this video, I'm going to introduce you to functions. Once you learn about them you won't be able to stop using them. I sure can't.

**2. Functions**

Functions aren't entirely new for you actually: you've already used them. type, for example, is a function that returns the type of a value. But what is a function? Simply put, a function is a piece of reusable code, aimed at solving a particular task. You can call functions instead of having to write code yourself. Maybe an example can clarify things here.

**3. Example**

Suppose you have the list containing only the heights of your family, fam: Say that you want to get the maximum value in this list. Instead of writing your own piece of Python code that goes through the list and finds the highest value, you can also use Python's max function. This is one of Python's built-in functions, just like type. We simply pass fam to max inside parentheses. The output makes sense: 1-point-89, the highest number in the list. max worked kind of like a black box here:

**4. Example**

you passed it a list, then the implementation of max, that you don't know, did its magic,

**5. Example**

and produced an output. How max actually did this, is not important to you, it just does what it's supposed to, and you didn't have to write your own code, which made your life easier.

**6. Example**

Of course, it's possible to also assign the result of a function call to a new variable, like here. Now tallest is just like any other variable; you can use it to continue your fancy calculations.

**7. round()**

Another one of these built-in functions is round. It takes two inputs: first, a number you want to round, and second, the precision with which to round, which is how many digits after the decimal point you want to keep. Say you want to round 1-point-68 to one decimal place. The first input is 1-point-68, the second input is 1. You separate the inputs with a comma. But there's more. It's perfectly possible to call the round function with only one input, like this. This time, Python figured out that you didn't specify the second input, and automatically chooses to round the number to the closest integer. To understand why both approaches work, let's open up the documentation. You can do this with yet another function, help, like this. It appears that round takes two inputs.

**8. round()**

In Python, these inputs, also called arguments, have names: number and ndigits. When you call the function round,

**9. round()**

with these two inputs, Python matches the inputs to the arguments:

**10. round()**

number is set to 1-point-68 and

**11. round()**

ndigits is set to 1. Next,

**12. round()**

The round function does its calculations with number and ndigits as if they are Python variables in a script. We don't know exactly what code Python executes. What is important, though, is that the function produces an output,

**13. round()**

namely the number 1-point-68 rounded to 1 decimal place.

**14. round()**

If you call the function round with only one input,

**15. round()**

Python again tries to

**16. round()**

match the inputs to

**17. round()**

the arguments. There's no input to match to the ndigits argument though. Luckily,

**18. round()**

the internal machinery of the round function knows how to handle this. When ndigits is not specified, the function simply rounds to the closest integer and

**19. round()**

returns that integer. That's why we got the number 2.

**20. round()**

In other words, ndigits is an optional argument. This tells us that you can call round in this form, as well as in this one.

**21. Find functions**

By now, you have an idea about how to use max and round, but how could you know that a function such as round exists in Python in the first place? Well, this is something you will learn with time. Whenever you are doing a rather standard task in Python, you can be pretty sure that there's already a function that can do this for you. In that case, you should definitely use it! Just do a quick internet search and you'll find the function you need with a nice usage example. And there is of course DataCamp, where you'll also learn about powerful functions and how to use them.

**22. Let's practice!**

Get straight to it in the interactive exercises, and I'll see you back here soon!
