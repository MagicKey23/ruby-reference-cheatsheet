#Getting Input
#The built in method we'll use to allow a user to give input is gets
#However, since the user presses enter to end their input, this will add a newline character at the end of the string. \n


#Since gets returns a string, let's chomp it in our old example. Here is the correct code:
puts "Enter 'yes' or 'no'"

response = gets.chomp

if response == "yes"
  puts "yup!"
elsif response == "no"
  puts "nah!"
else
  puts "I'm sorry, my responses are limited."
end

#Getting Numbers

puts "Enter a number: "
num = gets.chomp

#Converting Strings to Numbers

puts "Enter a number: "
num = gets.chomp.to_i
puts 2 * num