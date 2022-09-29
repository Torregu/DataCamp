**1. while loop**

In the previous chapter, you've discovered the if-elif-else construct, a way to alter the flow of your scripts. As soon as Python encounters an if statement, it checks the condition.

**2. if-elif-else**

When this condition is True, the corresponding code is executed. If the conditions evaluates to False, and if there are elif and else statements, Python continues the search. Anyways, Python goes through this piece of code only once. After that, Python heads over to the next command in the script. The while loop is somewhat similar to an if statement: it executes the code inside if the condition is True. However, as opposed to the if statement, the while loop will continue to execute this code over and over again as long as the condition is true.

**3. While**

The syntax of a while loop is very similar to the if statement, as you can see here. The while loop is not that common, but in some cases it can be very useful. As example, suppose you're numerically calculating a model based on your data. This typically involves taking the same steps over and over again, until the error between your model and your data is below some boundary. When you can reformulate the problem as 'repeating an action until a particular condition is met', a while loop is often the way to go. Say that we start with an error of fifty and that our fancy algorithm divides the error by four on each run. We want to keep going until the error is no longer above 1.

**4. While**

Now heading over to the script, we start by adding the error we start with, 50. Next, we write a while loop. In the condition part, we write error > 1, so that the while loop executes again as long as the error is above 1. Inside the code, we divide the error by four and update the error variable. This kind of simulates our fancy algorithm that divides the error by four on every run. Next, we also print this error. Let's go through what happens if you actually run this script, step by step.

**5. While**

On the first run, the error is 50, so the while condition is True and the corresponding code is executed. The error is divided by four and printed out: 12.5.

**6. While**

Now, Python heads back to the condition of the while loop, with error equal to 12.5. Again, the condition is True, and the code is executed. The Error is divided by 4 and printed out. Now the error is 3.125 and Python heads back to the while condition.

**7. While**

3.125 is still greater than 1 so the corresponding code is executed again. Now, the error is only zero point seven eight so on, as you can see from the printout.

**8. While**

Once more, Python heads over to the while condition, but this time, the condition is False. The code in the while loop is not executed anymore, and Python moves on. Notice that inside this while loop, this update of error is crucial: the error had to go down to become lower than 1 at some point.

**9. While**

Suppose that we comment out these updates of the error value, and run the script again. The error isn't updated, so the condition is always True and the while loop will go on forever. On DataCamp, this will cause your session to be disconnected. If you're making this mistake on your own system, you will have to interrupt the python program by pressing the control and C keys.

**10. Let's practice!**

Head over to the exercises to write some while loops yourself, and be careful: your while loop should stop at some point! If it doesn't, how will you get back to the next video? Just kidding. See you soon.