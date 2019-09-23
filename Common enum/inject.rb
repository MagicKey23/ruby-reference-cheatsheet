
#Inject method is known as reduce in other programming language
[11, 7, 2, 4].inject { |acc, el| acc + el }


#Conditional example using Inject
p [11, 7, 2, 4].inject do |acc, el|
    if el < acc
        el
    else
        acc
    end
end # => 2

#Assign default Inject

# FIRST ITERATION:
# acc = 100
# el = 11
# new_acc = 111
[11, 7, 2, 4].inject(100) { |acc, el| acc + el }

#example sum up all even
[11, 7, 2, 4].inject(0) do |acc, el|
    if el.even?
        acc + el
    else
        acc
    end
end # => 6