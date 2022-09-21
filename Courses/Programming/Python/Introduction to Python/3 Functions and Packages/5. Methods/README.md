**1. Methods**

Built-in functions are only

**2. Built-in Functions**

one part of the Python story. You already know about functions such as max, to get the maximum of a list, len, to get the length of a list or a string, and so on. But what about other basic things, such getting the index of a specific element in the list, or reversing a list? You can look very hard for built-in functions that do this, but you won't find them.

**3. Back 2 Basics**

In the past exercises, you've already created a bunch of variables. Among other Python types, you've created strings, floats and lists, like the ones you see here. Each one of these values or data structures are so-called Python objects. This string is an object, this float is an object, but this list is also, you got it, an object. These objects have a specific type, that you already know:

**4. Back 2 Basics**

string, float, and list, and of course they represent the values you gave them, such as "liz", 1-point-73 and an entire list. But in addition to this, Python objects also come with a bunch of so-called "methods". You can think of methods as functions that "belong to" Python objects. A Python object of type string has methods,

**5. Back 2 Basics**

such as capitalize and replace, but also objects of type float and list have specific methods depending on the type. Enough for the theory now; let's try to use a method!

**6. list methods**

Suppose you want to get the index of the string "mom" in the fam list. fam is an Python object with the type list, and has a method named index. To call the method, you use the dot notation, like this. The only input is the string "mom", the element you want to get the index for. Python returns 4, which indeed is the index of the string "mom". I called the index method "on" the fam list here, and the output was 4. Similarly, I can use the count method on the fam list to count the number of times 1-point-73 occurs in the list. Python gives me 1, which makes sense, because only liz is 1-point-73 meters tall. But lists are not the only Python objects that have methods associated. Also floats, integers, booleans and strings

**7. str methods**

are Python objects that have specific methods associated with them. Take the variable sister for example, that represents a string. You can call the method capitalize on sister, without any inputs. It returns a string where the first letter is capitalized now. Or what if you want to replace some parts of the string with other parts? Not a problem. Just call the method replace on sister, with two appropriate inputs. In the output, "z" is replaced with "sa".

**8. Methods**

To be absolutely clear: in Python, everything is an object, and each object has specific methods associated. Depending on the type of the object, list, string, float, whatever, the available methods are different. A string object like sister has a replace method, but a list like fam doesn't have this, as you can see from this error.

**9. Methods**

Objects of different types can have methods with the same name: Take the index method. It's available for both strings and lists. If you call it on a string, you get the index of the letters in the string; If you call it on a list, you get the index of the element in the list. This means that, depending on the type of the object, the methods behave differently. Before I unleash you on some exercises on methods,

**10. Methods (2)**

there's one more thing I want to tell you. Some methods can change the objects they are called on. Let's retake the fam list, and call the append method on it. As the input, we pass a string we want to add to the list. Python doesn't generate an output, but if we check the fam list again, we see that it has been extended with the string "me". Let's do this again, this time to add my height to the list. Again, the fam list was extended. This is pretty cool, because you can write very concise code to update your data structures on the fly, but it can also be pretty dangerous. Some method calls don't change the object they're called on, while others do, so watch out.

**11. Summary**

Let's take a step back here and summarize this. you have Python functions, like type, max and round, that you can call like this. There's also methods, which are functions that are specific to Python objects. Depending on the type of the Python object you're dealing with, you'll be able to use different methods and they behave differently. You can call methods on the objects with the dot notation, like this, for example. There's much more to tell about Python objects, methods and how Python works internally,

**12. Let's practice!**

but for now, let's stick to what I've talked about here. It's time to get some exercises and add methods to your evergrowing skillset!
