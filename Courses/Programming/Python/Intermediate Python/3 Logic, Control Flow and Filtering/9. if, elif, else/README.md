**1. if, elif, else**

So you know about comparison operators now,

**2. Overview**

such as less than and greater than, and you also know how to combine the boolean results, using boolean operators such as and and or. Things get really interesting when you can actually use these concepts to change how your program behaves. Depending on the outcome of your comparisons, you might want your Python code to behave differently. You can do this with conditional statements in Python: if, else and elif.

**3. if**

Let's start working in a script, control.py. Suppose you have a variable z, equal to 4. If the value is even, you want to print out: "z is even". This code does the trick. modulo operator 2 will return 0 if z is even. If you run this, Python checks if the condition holds. It's true, so the corresponding code is executed: "z is even" gets printed out. Let's compare this to the general recipe for an if statement. It reads as follows: if condition, execute expression. Notice the colon at the end, and the fact that you simply have to indent the Python code with four spaces (or a tab) to tell Python what to do in the case the condition succeeds.

**4. if**

To exit the if statement, simply continue with some Python code without indentation, and Python will know that it's not part of the if statement.

**5. if**

It's perfectly possible to have more lines inside the if statement, like this for example. The script now prints out two lines if you run it. If the condition does not pass, the expression is not executed.

**6. if**

You can see this if we change z to be 5 and rerun the code: there's no output. Suppose now that you want to print out "z is odd" in this case. How to do this?

**7. else**

Well, you can simply use an else statement, like this. If we run it with z equal to 5, the condition is not true, so the expression for the else statement gets printed out. The general recipe looks like this: for the else statement, you don't need to specify a condition. The corresponding expression gets run if the condition of the if statement it belongs to does not hold.

**8. elif**

You can think of cases where even more customized behavior is necessary. Say you want different printouts for numbers that are divisible by 2 and by 3. You can throw some elifs in there to get the job done. Take this example. Can you tell what this script will print out if you run it? If z equals 3, the first condition is False, so it goes over to the next condition. This condition, does hold, so the corresponding print statement is executed.

**9. elif**

Suppose now that z equals 6. Both the if and elif conditions hold in this case. Will two printouts occur? Nope. As soon as Python bumps into a condition that is true, it executes the corresponding code and then leaves the control structure after that. This means the second condition, corresponding to the elif, is never reached so there's no corresponding printout.

**10. Let's practice!**
Control flow can be extremely powerful when you're writing your own Python scripts. Get some practice with it in the exercises!