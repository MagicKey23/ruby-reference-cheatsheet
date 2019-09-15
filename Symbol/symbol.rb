str = "hello"   # the string 
sym = :hello    # the symbol

p str.length    # => 5
p sym.length    # => 5

p str[1]        # => "e"
p sym[1]        # => "e"

p str == sym    # => false
# a string is different from a symbol!

#The most apparent difference between strings and symbols is that strings are mutable, 
#while symbols are immutable. This means that string can be "changed",
#but a symbol can never be "changed":

#Memory
#String => Change
"hello".object_id   # => 70233443667980
"hello".object_id   # => 70233443606440
"hello".object_id   # => 70233443438700
#Symbol
:hello.object_id    # => 2899228
:hello.object_id    # => 2899228
:hello.object_id    # => 2899228

#Symbol Hash Key
my_bootcamp = { :name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"] }
p my_bootcamp           # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
p my_bootcamp[:color]   #=> "red

#Shortcut 
my_bootcamp = { name:"App Academy", color:"red", locations:["NY", "SF", "ONLINE"] }
p my_bootcamp           # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
p my_bootcamp[:color]   #=> "red