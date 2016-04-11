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
    Interpreter will crash at the site of the error
def Logical Error
    An error in the algorithm you used. A problem with what you said to do.
    Interpreter will crash, but after the error is caused
def Semantic Error
    An error in your approach to solve a problem.
    Interpreter will not crash, but will not do what you want
