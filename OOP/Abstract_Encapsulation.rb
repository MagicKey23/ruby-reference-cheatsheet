#abstraction is the process of exposing essential features of an object while hiding inner details that are not necessary to using the feature.
#Below is the class with a nicely abstracted #enroll method:
class Course
  def initialize(name, teachers, max_students)
    @name = name
    @teachers = teachers
    @max_students = max_students
    @students = []
  end

  def enroll(student)
    @students << student if @students.length < @max_students
  end
end  

course = Course.new("Object Oriented Programming 101", ["Ada Lovelace", "Brian Kernighan"], 3)

# Let's to enroll a student
course.enroll("Alice")


#encapsulation closely relates methods and data attributes together with the hope of preventing misuse.

#Say we wanted a class to track the order of people waiting in a line.
#We call this concept a Queue. 
#The rules of a Queue are simple: if you are the first one in, then you are also the first one out

#Let's take a look at a properly encapsulated Queue class.

class Queue
  def initialize
    @line = []
  end

  def add(ele)
    @line << ele # add ele to back of line
    nil
  end

  def remove
    @line.shift  # remove front ele of line
  end
end

grocery_checkout = Queue.new

grocery_checkout.add("bob")
grocery_checkout.add("alice")
grocery_checkout.remove          # => "bob"
grocery_checkout.add("noam")
grocery_checkout.add("donald")
grocery_checkout.remove          # => "alice"
grocery_checkout.remove          # => "noam"
grocery_checkout.remove          # => "donald"

# people who are added first to the line will leave first!

#You'll notice that above we decided to not include a getter for @line, that is because we shouldn't include a full getter.
#If we give the user full access to the @line then we can't enforce any of our rules and the result is disastrous:.

grocery_checkout.line.unshift("noam")   # noam cut the line!