#attr_reader

class Dog
  # attr_reader will define #name and #age getters for us
  attr_reader :name, :age

  def initialize(name, age, favorite_food)
    @name = name
    @age = age
    @favorite_food = favorite_food
  end
end

dog = Dog.new("Fido", 3, "pizza")
dog.name
dog.age
dog.favorite_food # NoMethodError: undefined method `favorite_food', beca

#attr_writer

class Dog
  # attr_writer will define #name= and #age= setters for us
  attr_writer :name, :age

  def initialize(name, age, favorite_food)
    @name = name
    @age = age
    @favorite_food = favorite_food
  end
end

dog = Dog.new("Fido", 3, "pizza")

dog.name = "Spot"
dog.age += 1

p dog #<Dog:0x007fd87f1144a0 @age=4, @favorite_food="pizza", @name="Spot">

dog.favorite_food = "calzone" # NoMethodError: undefined method `favorite_food=', because we did't pass it to attr_writer


#attr_accessor

class Dog
  # attr_accessor will define #name, #name=, #age, #age= methods for us
  attr_accessor :name, :age

  def initialize(name, age, favorite_food)
    @name = name
    @age = age
    @favorite_food = favorite_food
  end
end

dog = Dog.new("Fido", 3, "pizza")

# Let's use the setter and getter for name!
dog.name = "Spot"
p dog.name          # "Spot"
