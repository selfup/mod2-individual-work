puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = <<END
\tThe lovely world
**WITH LOGIC**
cannot
nor
and
\n\\t\twhere there is none
END
# This segment defines the poem
# Need to look up <<END and END
# Seems similar to =begin =end
# most likely the same thing
# However it seems to make the characters within..
# ACT AS STRINGS!
# That's it :)

puts "_____________"
puts poem
puts "-------------"

# Since the poem seems to be a string...

five = 10 - 2 + 3 - 6 # Basic math
puts "This should be five: #{five}" # Outputs predefined variable

def secret_formula(started) # define a function
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

# Function stored. Can be executed whenever called

start_point = 10000 # Defining a variable
beans, jars, crates = secret_formula(start_point) # Defining multiple variables

puts "With a starting point of : #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10
