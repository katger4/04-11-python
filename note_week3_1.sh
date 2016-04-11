VAR = "Hello"
        "He//o"

sed -E "s/text/$VAR/"
        "s/text/Hello"
        "s/text/He//o"
        "s_text_$VAR_"

http://do1.dr-chuck.com/pythonlearn/

http://docs.python-guide.org/en/latest/starting/install/osx/

http://www.marinamele.com/2014/07/install-python3-on-mac-os-x-and-use-virtualenv-and-virtualenvwrapper.html

Running Python: (hey computer, do my python work)
    "$ python --version"
    --> Python 2.7.11 :: Anaconda 2.5.0 (x86_64)
    "$ python3 --version" <--tell me what version you are
    --> Python 3.4.3

Interactive Shell:
    $ python3
    Python 3.4.3 (v3.4.3:9b73f1c3e601, Feb 23 2015, 02:52:03) 
    [GCC 4.2.1 (Apple Inc. build 5666) (dot 3)] on darwin
    Type "help", "copyright", "credits" or "license" for more information.
    >>> 1+2
    3
    >>> x = 6
    >>> import math
    >>> (4/3)*math.pi*(x**3)
    904.7786842338603
    >>> quit()

def Syntax Error
    An error in the use of the Python language. A problem with how you said something.
    Interpreter will crash at the site of the error <-- error caught by interpreter
    "pint vs print"
    easy to see & fix, start at error, work up
def Logical Error
    An error in the algorithm you used. A problem with what you said to do.
    Interpreter will crash, but after the error is caused
    given it instructions that dont make sense (e.g "write down answer then pick up pen")
def Semantic Error
    An error in your approach to solve a problem.
    Interpreter will not crash, but will not do what you want
    problems in what you told it to do/my approach to the program; how trying to solve prob didnt work (no error msg)
    give bad instructions, start at top/work down
Variables: A label that refers to a value (information)
    my_num = 598

Once we have a variable, we can use that label to refer to a value (in place of a value)
 x = 4  #x refers to 4
 y = x  #y refers to the value of x (4)
 When a label is on the left, it means the variable.
 When a label is on the right, it means the value.
Variable assignment does not specify an equality!
 x = 4  #x refers to 4
 y = x  #y refers to the value of x (4)
 x = 5  #x now refers to 5 (move label)
 print(y)  #y refers to 4 (label hasn't moved)
Give variables detailed, informative names!
    # will run, but what does it do?
    a = 35.0 
    b = 12.50 
    c=a*b

    # much better!
    hours = 35.0
    rate = 12.50
    pay = hours * rate

    # Get out.
    x1q3z9ahd = 35.0
    x1q3z9afd = 12.50
    x1q3p9afd = x1q3z9ahd * x1q3z9afd

Value Assignment:
    >>> x=4
    >>> y=x
    >>> x=5
    >>> print(x)
    5
    >>> print(y)
    4 <--havent re-assigned y to new x

Variable Types (technically value types) <-- type(var) tells you what type your var is
    x = 4    # => 'int' (integer)
     
    y = 1.5  # => 'float' (decimal)

    message = "Hello world" # => 'str' (string)

    likes_python = True # => 'bool' (boolean)

    Others as well: list, tuple, dict, etc.

Numerical Operators:
    # addition
    x + y

    # subtraction
    x - y

    # multiplication
    x * y

    # division
    x / y

    # exponential
    x**y  # (x to the y power)

    # modulo (remainder)
    x % y  # remainder when x is divided by y

    Works on ints or floats (or both!)

String Operators:
    # concatenation
    "hello" + " " + "world"

    # repetition
    "Howdy"*3

    # not supported:
    "Hello World" - "World" # error!
    "HelloHelloHello"/3     # error!
    "hello"*"world"         # what do you even mean?

    "NaN"*10 + " Batman" --> 'NaNNaNNaNNaNNaNNaNNaNNaNNaNNaN Batman'

The reserved words in the language where humans talk to Python include the following:
    and del global not with
    as elif if or yield
    assert else import pass
    break except in raise
    class finally is return
    continue for lambda try
    def from nonlocal while

Functions: A named sequence of instructions
    print("Hello world")
        print = function (aka method)
        ("Hello world") = argument (arg) aka paramter (param)
    print("Hello", "World", end="\t") --> Hello World    >>> 
        multiple parameters are separated by commas (in cmd line sep with space)
        specific params ("end") can also be named (paramter that refers to the ending of this string "/t" which is "tab")
    print("Hello"*3) --> HelloHelloHello
        expressions in params are evaluated before function is executed

User Input: Get input from the user on the command-line via the  input() method. (vs user output via print)
    name = input("What is your name? ") <--prompt the user; function returns (gives back; evaluates to) a value, which can be stored in a variable
    print ("Hello "+name)
    input("What is your name? ") --> What is your name? Kat
                                     'Kat'
Python Practice
    Write a script interest.py which prompts the user for:
    An initial bank balance (principle)
    An annual interest rate
    A number of years
    And then calculates the total earnings and value after that many years (when compounded monthly). 
    Use the formula: A = P(1+r/n)^(nt)
    where A = amount
          P = principal
          r = rate of interest
          n = number of times per year, interest is compounded
          t = time in years
    # example output
    Initial balance: 1000 #entered by user
    Annual interest %: 6.0 #entered by user, convert to decimal!
    Number of years: 5 #entered by user

    Interest earned in 5 years: $348.8501525493075
    Total value after 5 years: $1348.8501525493075 
    print("Hello "+name)


Importing: We can access other functions by loading modules and calling functions on them.
    import math #import the math module

    math.sqrt(3) #square root of 3 
    --> "dot notation" module.function()

    >>> math.sqrt(3)
    1.7320508075688772
    >>> root3 = math.sqrt(3)
    >>> print (root3)
    1.7320508075688772
    
    Also check out the list of functions at:
    https://docs.python.org/3/library/math.html

Dot Notation: Call (execute) a function using a period between who you want to perform the function and what function to perform
    math.sqrt(3) #square root of 3
    --> tell math module to do sqrt work

    msg = "Hello World"
    msg = msg.upper() #make msg upper case
    --> tell msg to do uppercase work (and move label to new result!)

Available Functions
    Math Functions:
        https://docs.python.org/3/library/math.html
        How can I get the cosine of 2π?
    String Methods:
        https://docs.python.org/3/library/stdtypes.html#string-methods
        How can I get the cosine of 2π?
        How can I invert the case of a String (e.g., "Hello" => "hELLO")

def Object
    A value that encapsulates both data and functions that apply to that data.
    "Things" in a computer program that we can call methods on.

Turtle Graphics: A conceptual technique for drawing pictures based on telling a (virtual) pen-dragging robot where to move. Based on work by Seymour Papert at MIT (1960s)
    https://docs.python.org/3/library/turtle.html

    # load the turtle module so we can use it
    import turtle

    # tell the turtle module to make a Screen object
    # which represents the "window" that the turtle draws on
    window = turtle.Screen()

    # tell the turtle module to make a Turtle object
    # which represents a turtle that can draw
    my_turtle = turtle.Turtle()
    type(my_turtle) #=> 'turtle.Turtle'

    # tell the turtle to move!
    my_turtle.forward(100)  #forward 100 pixels
    my_turtle.left(12)      #left 120 degrees
    my_turtle.forward(80)   #forward 80 pixels

Regex in Python:
    https://docs.python.org/3/library/re.html
    https://docs.python.org/3/library/re.html#regular-expression-objects
    https://docs.python.org/3/library/re.html#match-objects

    # load the regular expression module
    import re

    # search the string for the given regular expression
    # returns a "match" object, or None (type) if no match
    matches = re.search('((\(\d{3}\)\s)?\d{3}-\d{4})', "(206) 685-1622")
    print(matches)

    # The "match" object has its own set of methods,
    # e.g., for fetching capture groups
    print(matches.group(0))

    # tell the window to wait for the user to close it
    window.mainloop()