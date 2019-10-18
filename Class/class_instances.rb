#How to Create Cats Poorly

cat_1 = {name: "Sennacy", color: "brown", age: 3}
cat_2 = {name: "Whiskers", color: "white", age: 5}
cat_3 = {name: "Garfield", color: "orange", age: 7}

#Creating a Cat Class
#We want to follow the DRY rule (Don't Repeat Yourself) and improve this code.

class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end
end
#@ is how we denote a instance variable or attribute of our class.
#That means that our cat's will have the attributes or properties of @name, @color, @age.

class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end
end

cat_1 = Cat.new("Sennacy", "brown", 3)
cat_2 = Cat.new("Whiskers", "white", 5)
p cat_1 #<Cat:0x007fb6d804cfe0 @age=3, @color="brown", @name="Sennacy">
p cat_2 #<Cat:0x007fb6d6bb60b8 @age=5, @color="white", @name="Whiskers">

#this instance belongs to and a unique id for this object: <Cat:0x007fb6d804cfe0...

#Getter Methods

class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end

  def get_name
    @name
  end
end
cat_1 = Cat.new("Sennacy", "brown", 3)
p cat_1.get_name # "Sennacy"

#Better Version

lass Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end
end

cat_1 = Cat.new("Sennacy", "brown", 3)
p cat_1.name  # "Sennacy"
p cat_1.age   # 3

cat_2 = Cat.new("Whiskers", "white", 5)
p cat_2.name  # "Whiskers"
p cat_2.age   # 5

p cat_2.color # This will give NoMethodError: undefined method `color'


#Setter Methods


class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end

  # getter
  def age
    @age
  end

  # setter
  def age=(number)
    @age = number
  end
end

cat_1 = Cat.new("Sennacy", "brown", 3)
p cat_1 #<Cat:0x007f8511a6f340 @age=3, @color="brown", @name="Sennacy">
cat_1.age = 42
p cat_1 #<Cat:0x007f8511a6f340 @age=42, @color="brown", @name="Sen


#The following two method calls are equivalent
cat_1.age=(42)
cat_1.age = 42

#Beyond

lass Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end

  def purr
    if @age > 5
      puts @name.upcase + " goes purrrrrr..."
    else
      puts "..."
    end
  end
end

cat_1 = Cat.new("Sennacy", "brown", 10)
cat_1.purr  # "SENNACY goes purrrrrr..."

cat_2 = Cat.new("Whiskers", "white", 3)
cat_2.purr  # "..."