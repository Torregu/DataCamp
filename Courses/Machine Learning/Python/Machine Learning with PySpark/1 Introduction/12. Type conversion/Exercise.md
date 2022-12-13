**Type conversion**

Using the `+` operator to paste together two strings can be very useful in building custom messages.

Suppose, for example, that you've calculated the return of your investment and want to summarize the results in a string. Assuming the integer `savings` and float `result` are defined, you can try something like this:

```
print("I started with $" + savings + " and now have $" + result + ". Awesome!")
```

This will not work, though, as you cannot simply sum strings and integers/floats.

To fix the error, you'll need to explicitly convert the types of your variables. More specifically, you'll need [**`str()`**](https://docs.python.org/3/library/functions.html#func-str), to convert a value into a string. `str(savings)`, for example, will convert the integer `savings` to a string.

Similar functions such as [**`int()`**](https://docs.python.org/3/library/functions.html#int), [**`float()`**](https://docs.python.org/3/library/functions.html#float) and [**`bool()`**](https://docs.python.org/3/library/functions.html#bool) will help you convert Python values into any type.
