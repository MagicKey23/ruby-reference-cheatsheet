#We should avoid creating one massive file for all of this classes and logic. A great design principle to follow is Separation of Concerns. 

project_root
  ├── pet_hotel.rb
  ├── cat.rb
  └── other_animals
      └── dog.rb

# project_root/cat.rb
class Cat
  def initialize(name)
    @name = name
  end
end

# project_root/other_animals/dog.rb
class Dog
  def initialize(name)
    @name = name
  end
end


# project_root/pet_hotel.rb

# Let's require the last two files, by specifying their path's relative to this pet_hotel.rb file
require_relative "./cat.rb"
require_relative "./other_animals/dog.rb"

class PetHotel
  def initialize(name)
    @name = name
    @guests = []
  end

  def check_in(guest)
    @guests << guest
  end
end

hotel = PetHotel.new("Animal Inn")

cat = Cat.new("Sennacy")
dog = Dog.new("Fido")

hotel.check_in(cat)
hotel.check_in(dog)

p hotel
# <PetHotel:0x007ffe7f01af60
#   @name="Animal Inn",
#   @guests=[
#     #<Cat:0x007ffe7f01aee8 @name="Sennacy">,
#     #<Dog:0x007ffe7f01ae98 @name="Fido">
#   ]
# >

#require_relative is a method we can use to specify a path to another ruby file.
#A single dot (./) denotes the current location of our file.


#require vs require_relative
#Rspec concerns explaination


#RSPEC is designed to be used where you have a separate /spec and /lib folders. 
#To get into the nitty gritty details, RSPEC will configure the $LOAD_PATH for us. But don't worry about this for now.

#As a rule of thumb, we'll use the plain require where gems are involved. 
#This is because ruby already knows where to find byebug through the $LOADPATH.