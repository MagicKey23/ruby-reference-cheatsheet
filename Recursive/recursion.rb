#Recursion is when a method calls itself.

    #A Simple Recursion

        #Infinite Loop : SystemStackError: stack level too deep. 
        # recursive method definition:
         def say_hello 
         p "hello"
        say_hello
        end

        say_hello # prints "hello" forever

        #Whenever we call a method, some of our system's memory must be allocated to execute that method call.
        #This is known as adding to the stack.
        #we will run out of space on the stack (run out of memory) and crash!

    #Recursive Countdown
        #this recursive definition evaluates in a similar way to before, however, now we are passing in decreasing numbers.
        #Our countdown crashes with a similar error as last time because we entered an infinite loop again.
        #Hmmm, what if we modify our method so that it stops at 0:
        def count_down(num)
         p num;
        count_down(num - 1)
        end

        count_down(10)  # this prints decreasing numbers starting at 10 forever

        #----------------------------------
        #Now our method stops once we hit 0! Let's say we get to the point where we evaluate countDown(0).
        #That means that the if condition is true, so we print the lift-off message and return
        def count_down(num) 
        if num == 0
        p "Houston, we have lift-off!"
        return;
        end

        p num
        count_down(num - 1)
        end

        count_down(10)  # prints numbers from 10 to 1, and finally "Houston, we have lift-off!


    #Anatomy of a Recursive Method

       #A recursive method consists of two fundamental parts:

            #the base case where we halt the recursion by not making a further call
            #the recursive step where we continue the recursion by making another subsequent call