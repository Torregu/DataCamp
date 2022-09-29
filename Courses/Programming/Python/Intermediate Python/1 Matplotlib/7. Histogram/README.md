**1. Histogram**

Oh you are killing it! Now in this video, I'll introduce the histogram.

**2. Histogram**

The histogram is a type of visualization that's very useful to explore your data. It can help you to get an idea about the distribution of your variables. To see how it works, imagine 12 values between 0 and 6.

**3. Histogram**

I've put them along a number line here. To build a histogram for these values, you can divide the line into equal chunks, called bins.

**4. Histogram**

Suppose you go for 3 bins, that each have a width of 2. Next, you count how many data points sit inside each bin.

**5. Histogram**

There's 4 data points in the first bin,

**6. Histogram*

6 in the second bin

**7. Histogram**

and 2 in the third bin.

**8. Histogram**

Finally, you draw a bar for each bin. The height of the bar corresponds to the number of data points that fall in this bin. The result is a histogram, which gives us a nice overview on how the 12 values are distributed. Most values are in the middle, but there are more values below 2 than there are above 4. Of course, we can use matplotlib to build histograms as well.

**9. Matplotlib**

As before, you should start by importing the pyplot package that's inside matplotlib. Next, you can use the hist function. Let's open up its documentation. There's a bunch of arguments you can specify, but the first two here are the most important ones. x should be a list of values you want to build a histogram for. You can use the second argument, bins, to tell Python into how many bins the data should be divided. Based on this number, hist will automatically find appropriate boundaries for all bins, and calculate how may values are in each one. If you don't specify the bins argument, it will by 10 by default.

**10. Matplotlib example**

So to generate the histogram that you've seen before, let's start by building a list with the 12 values. Next, you simply call hist and pass this list as an input, so it's matched to the argument x. I also specified the bins argument to be 3, so that the values are divided in three bins. If you finally call the show function, you get a histogram. Histograms are really useful to give a bigger picture.

**11. Population pyramid**

As an example, have a look at this so-called population pyramid. The age distribution is shown, for both males and females, in the European Union. Notice that the histograms are flipped 90 degrees; the bins are horizontal now. The bins are largest for the ages 40 to 44, where there are 20 million males and 20 million females. They are the so called baby boomers. These are figures of the year 2010. What do you think will have changed in 2050?

**12. Population pyramid**

Let's have a look. The distribution is flatter, and the baby boom generation has gotten older. With the blink of an eye, you can easily see how demographics will be changing over time. That's the true power of histograms at work here!

**13. Let's practice!**

Now head over to the exercises to experiment with histograms yourself!