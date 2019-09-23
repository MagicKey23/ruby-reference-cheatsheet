
#manual raise exception

def format_name(first, last)
  if !(first.instance_of?(String) && last.instance_of?(String))
    raise "arguments must be strings"
  end

  first.capitalize + " " + last.capitalize
end

format_name("grace", "hopper") # => "Grace Hopper"
format_name(42, true)          # => RuntimeError: arguments must be string


# Handling Exception


begin
  puts "dividing 10 by #{num}"
  ans = 10 / num
  puts "the answer is #{ans}"
rescue
  puts "There was an error with that division."
end
