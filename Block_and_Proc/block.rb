#Block

#a chunk of code that is passed into a method to be executed.

#example:
[1,2,3].map { |num| -(num * 2) } # => [-2, -4, -6]
#we can use do...end syntax for multiline blocks:
[1,2,3].map do |num|
  doubled = num * 2
  -doubled
end     # => [-2, -4, -6]


#It is very, very common to have blocks that take an argument and call a single method. For example:
["a", "b", "c"].map { |str| str.upcase }  #=> ["A", "B", "C"]
[1, 2, 5].select { |num| num.odd? }       #=> [1, 5]
#equivalent to:
["a", "b", "c"].map(&:upcase) #=> ["A", "B", "C"]
[1, 2, 5].select(&:odd?)      #=> [1, 5]
#:upcase is a symbol referring to the String#upcase method.
#& to convert this "method" into an object that we can pass into map


#Note!

In Ruby, we cannot directly pass a method into another method, so we need to use the '&' operator.

#When employing this trick, be aware of what &:method you are using.
# The method you choose should be compatible with your data:

["a", "b", "c"].map(&:upcase) # => ["A", "B", "C"]
[1, 2, 3].map(&:upcase)       # NoMethodError: undefined method 'upcase' for Integer
