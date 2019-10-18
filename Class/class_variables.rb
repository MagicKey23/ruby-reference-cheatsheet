
#Let's say we wanted all car instances to have the same number of wheels. We can add a class variable @@num_wheels:

class Car
  @@num_wheels = 4

  def initialize(color)
    @color = color
  end

  # getter for @color instance variable
  def color
    @color
  end

  # getter for @@num_wheels class variable
  def num_wheels
    @@num_wheels
  end
end

car_1 = Car.new("red")
p car_1.num_wheels    # 4

#@@ to denote class variables and typically assign these variables right inside of the class, but not inside of #initialize


#Let's create a class method that sets @@num_wheels:
class Car
  @@num_wheels = 4

  def self.upgrade_to_flying_cars
    @@num_wheels = 0
  end

  def initialize(color)
    @color = color
  end

  def num_wheels
    @@num_wheels
  end
end

car_1 = Car.new("red")
car_2 = Car.new("black")

p car_1.num_wheels    # 4
p car_2.num_wheels    # 4

Car.upgrade_to_flying_cars

p car_1.num_wheels    # 0
p car_2.num_wheels    # 0

car_3 = Car.new("silver")
p car_3.num_wheels    # 0

#Class Constants


class Car
  NUM_WHEELS = 4

  def self.upgrade_to_flying_cars
    NUM_WHEELS = 0    # SyntaxError: dynamic constant assignment
  end

  def initialize(color)
    @color = color
  end

  def num_wheels
    NUM_WHEELS
  end
end


car_1 = Car.new("red")
car_2 = Car.new("black")

p car_1.num_wheels    # 4
p car_2.num_wheels    # 4

#Class constant names must be capitalized


an @instance_variable will be a distinct variable in each instance of a class; changing the variable will only effect that one instance
a @@class_variable will be shared among all instances of a class; changing the variable will effect all instances because all instances of the class
a CLASS_CONSTANT will be shared among all instances of a class, but cannot be changed