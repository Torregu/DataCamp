**1. Random Walk**

You are doing SO well.

**2. Random Step**

If you use a dice to determine your next step, you can call this a random step. What if you use a dice 100 times to determine your next step? You would have a succession of random steps, or in other words, a random walk.

**3. Random Walk**

This is a well known concept in science. For example, the path traced by a molecule as it travels in a liquid or a gas can be modeled as a random walk. The financial status of a gambler is another example. To record every step in your random walk, you need to learn how to gradually build a list with a for loop.

**4. Heads or Tails**

Have a look at this code. It keeps the outcomes for playing a game of heads or tails ten times, with the random number generator we coded up in the previous video. After importing numpy and setting a seed for the random number generator, we initialize an empty list "outcomes". Next, we build a for loop that should run ten times. We can do this with the range() function, that generates a list of numbers that you can use to iterate over. Inside this for loop, we generate a random integer coin that's either zero or one. Zero corresponds to heads, 1 to tails. If coin is zero, we append the string heads to the list. Else, we append the string tails. In both cases, we do this with the append method, which you learned about in the intro course. Finally, we print the outcomes list we've built up in these 10 iterations. If we run this script, eventually a list with 10 strings will be printed out. This list is random, but it's not a random walk, because the items in the list are not based on the previous ones. It's just a bunch of random steps.

**5. Heads or Tails: Random Walk**

You could turn this example into a random walk by tracking the -total- number of tails while you're simulating the game. In this case, you start by creating a list, tails, that already contains the number 0, because at the start, you haven't thrown any tails. Then you again start a for loop that runs 10 times, using the range function. In there, you again generate a random number. Instead of the if-else structure, you can simplify things. If coin is 0, so heads, the number of tails you've thrown shouldn't change. If a 1 is generated, the number of tails should be incremented with 1. This means that you can simply add coin to the previous number of tails, and add this count to the list with append. Finally, you again print the list tails. After running this script, a list with 11 elements will be printed out. The final element in this list tells you how often tails was thrown.

**6. Step to Walk**

If you compare the output of the first script to the output of the second script, you can see that the numbers in the tails list are incremented by one each time you threw tails. This is exactly how a bunch of random steps are converted into a random walk.

**7. Let's practice!**

Head over to the exercises to apply this new knowledge on your own case study!