**1. Loop Data Structures Part 2**

There's one killer data structure out there that we haven't covered up to now when it comes to looping: the Pandas DataFrame.

**2. brics**

Let's go over the data on the brics countries one last time. These lines of code import it from the CSV file brics.csv. You can see its contents on the top right here, so you can follow along.

**3. for, first try**

If a Pandas DataFrame were to function the same way as a 2D NumPy array, then maybe a basic for loop like this, to print out each row, could work. Let's see what the output is. Well, this was rather unexpected. We simply got the column names. Also interesting, but not exactly what we want. In Pandas, you have to mention explicitly that you want to iterate over the rows.

**4. iterrows**

You do this by calling the iterrows method on the brics country, thus specifying another "sequence": The iterrows method looks at the DataFrame, and on each iteration generates two pieces of data: the label of the row and then the actual data in the row as a Pandas Series. Let's change the rest of the for loop to reflect this change: we store the row label as lab, and the row data as row. To understand what's happening, let's print lab and row seperately. In the first iteration, lab is BR, and row is this entire Pandas Series. Because this row variable on each iteration is a Series, you can easily select additional information from it using the subsetting techniques you learned about earlier.

**5. Selective print**

Suppose you only want to print out the capital on each iteration: let's change the print statement as follows, printing the label and the capital together. You can take things further than simple printouts, though.

**6. Add column**

Let's add a new column to the brics DataFrame, named name_length, containing the number of characters in the country's name. To do this, we'll need to blend together a lot of the things we've learned. It's pretty advanced stuff, so try to stay with me here. The specification of the for loop can be the same, because we'll need both the row label and the row data. Next, we can calculate the length of each country name by selecting the country column from row, and then passing it to the len() function, that determines the number of characters in a string. Finally, we'll have to add this new information to a new column, name_length, at the appropriate location. I used loc here, which is label-based. To see whether we coded things correctly, I'm adding a printout of brics after the for loop, so without indentation. Running this scripts shows that it worked: there's a new column in there with the length of the country names. Nice, but not especially efficient, because you're creating a Series object on every iteration. For this small DataFrame that doesn't matter, but if you're doing funky stuff on a ginormous dataset, this loss in efficiency can become problematic.

**7. apply**

A way better approach if you want to calculate an entire DataFrame column by applying a function on a particular column in an element-wise fashion, is apply(). In this case, you don't even need a for loop. This is how it's done. Basically, you're selecting the country column from the brics DataFrame, and then, on this column, you apply the len function. Apply calls the len function with each country name as input and produces a new array, that you can easily store as a new column, "name_length". This is way more efficient, and also easier to read, if you ask me. So, I've told you how to iterate DataFrames with a for loop, and how to do vectorized operations with the apply function. These skills will become very useful once you start transforming your own datasets!

**8. Let's practice!**

Get straight to it in the exercises. And then I'll see you back here for your awesome capstone project where you'll do some hacker statistics.