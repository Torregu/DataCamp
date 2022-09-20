**1. Manipulating Lists**

Wow, you're doing super well. So now, after creation and subsetting, the final piece of the Python lists puzzle is

**2. List Manipulation**

manipulation, so ways to change elements in your list, or to add elements to and remove elements from your list.

**3. Changing list elements**

Changing list elements is pretty straightforward. You use the same square brackets that we've used to subset lists, and then assign new elements to it using the equals sign. Suppose that after another look at fam, you realize that your dad's height is not up to date anymore, as he's shrinking with age. Instead of 1-point-89 meters, it should be 1-point-86 meters. To change this list element, which is at index 7, you can use this line of code. If you now check out fam, you'll see that the value is updated. You can even change an entire list slice at once. To change the elements "liz" and 1-point-73, you access the first two elements with 0:2, and then assign a new list to it. Do you still remember how the plus operator was different for strings and integers?

**4. Adding and removing elements**

Well, it's again different for lists. If you use the plus sign with two lists, Python simply pastes together their contents in a single list. Suppose you want to add your own name and height to the fam height list. This will do the trick. Of course, you can also store this new list in a variable, fam_ext for example. Finally, deleting elements from a list is also pretty straightforward, you'll have to use del here. Take this line, for example, that deletes the element with index 2, so "emma", from the list. If you check out fam now, you'll see that the "emma" string is gone. Because you've removed an index, all elements that came after "emma" scooted over by one index. If you again run the same line, you're again removing the element at index 2, which is emma's height, 1-point-68 meters now. Understanding how Python lists actually work

**5. Behind the scenes (1)**

behind the scenes becomes pretty important now. What actually happens when you create a new list, x, like this? Well, in a simplified sense, you're storing a list in your computer memory, and store the 'address' of that list, so

**6. Behind the scenes (1)**

where the list is in your computer memory, in x. This means that x does not actually contain all the list elements, it rather contains a reference to the list. For basic operations, the difference is not that important, but it becomes more so when you start copying lists. Let me clarify this with an example. Let's store the list x as a new variable y, by simply using the equals sign. Let's now change the element with index one in the list y, like this. The funky thing is that if you now check out x again, also here the second element was changed. That's because when you copied x to y with the equals sign,

**7. Behind the scenes (1)**

you copied the reference to the list, not the actual values themselves.

**8. Behind the scenes (1)**

When you're updating an element the list, it's one and the same list in the computer memory your changing. Both x and y point to this list, so the update is visible from both variables. If you want to create a list y that points to a new list in the memory with the same values,

**9. Behind the scenes (2)**

you'll need to use something else than the equals sign. You can use the list function,

**10. Behind the scenes (2)**

like this, or use slicing to select all list elements explicitly. If you now

**11. Behind the scenes (2)**

make a change to the list y points to, x is not affected. If this was a bit too much to take in, don't worry.

**12. Let's practice!**

The exercises will help you understand list manipulation and the subtle inner workings of lists. I'm sure you'll do great!
