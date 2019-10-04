#Creating a Proc

We cannot pass a block into a method, but we can turn the block into a proc and pass that proc into a method to be executed

doubler = Proc.new { |num| num * 2 }
p doubler # #<Proc:0x00007f9a8b36b0c8>

#Calling a Proc
#Now that we have a proc, let's execute the code it contains. To do this, we need to use the Proc#call method:
    

doubler = Proc.new { |num| num * 2 }
p doubler.call(5) # => 10
p doubler.call(7) # => 14


is_even = Proc.new do |num|
  if num % 2 == 0
    true
  else
    false
  end
end

p is_even.call(12) # => true

#Passing a Proc to a Method

def add_and_proc(num_1, num_2, prc)
  sum = num_1 + num_2
  p prc.call(sum)
end

doubler = Proc.new { |num| num * 2 }
add_and_proc(1, 4, doubler)   # => 10

square = Proc.new { |num| num * num }
add_and_proc(3, 6, square)    # => 81

negate = Proc.new { |num| -1 * num }
add_and_proc(3, 6, negate)    # => -9

#Ruby affords us a way to automatically convert a block into a proc when passed into method.

# Version 1: manual, proc accepting method
def add_and_proc(num_1, num_2, prc)
  sum = num_1 + num_2
  p prc.call(sum)
end

doubler = Proc.new { |num| num * 2 }
add_and_proc(1, 4, doubler)   # => 10


# Version 2: automatic conversion from block to proc
def add_and_proc(num_1, num_2, &prc)
  sum = num_1 + num_2
  p prc.call(sum)
end

add_and_proc(1, 4) { |num| num * 2 }  # => 10


By using the & operator on the third parameter, ruby knows to automatically convert the block into proc for us.

Here are two general tips that you can use to reason out whether a method expects a proc or a block.

def my_method(prc)
  # ...
end

# By looking at the parameter `prc` we know that my_method must be passed a proc:
my_proc = Proc.new { "I'm a block" }
my_method(my_proc)


def my_method(&prc)
  # ...
end

# By looking at the parameter `&prc` we know that my_method must be passed a block,
# because & denotes conversion from block to proc here:
my_method { "I'm a block" }

# convert a block into a proc.

def add_and_proc(num_1, num_2, &prc)
  sum = num_1 + num_2
  p prc.call(sum)
end

doubler = Proc.new { |num| num * 2 }
add_and_proc(1, 4, &doubler)   # => 10


#extra information

[1,2,3].map { |num| num * 2 } # => [2, 4, 6]
#same as
doubler = Proc.new { |num| num * 2 }
[1,2,3].map(&doubler) # => [2, 4, 6]