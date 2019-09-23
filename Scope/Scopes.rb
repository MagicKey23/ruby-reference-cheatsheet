# Lexical scope describes how a variable name evaluates in nested code

#Error 
def say_hello
    message = "hello"
end

say_hello
p message   # NameError: undefined local variable
#######

#Valid 

def say_hello
    message = "hello"
    p message
end

say_hello

############




#Everywhere area in our code can access the global scope. 
#To define variables in the global scope, we must use special syntax.
#Let's redo our last example utilizing global scope:

#Global Scope

$message = "hello globe"

def say_hello
    p $message
end

say_hello # => "hello globe"

#########



