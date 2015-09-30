first, second, third = ARGV

print "Are you human? Yes or No: "
i1 = $stdin.gets.chomp # Turns out you need to use $stdin to make .gets work with ARGV
                       # Otherwise .gets will not work once ARGV has been declared
                       # Interesting...!
                       # **THE REAL REASON: $stdin only reads user's input
                       # **THE REAL REASON: gets.chomp read ARGV first!
                       # Whoa! :D

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print """Hello am I #{first}, #{second}, or #{third}?
"""
# The triple quotes ensures that the prompt comes on a new line
# This way the user is not ocnfused!

print """
You said '#{i1}' to being human btw...
"""

puts """
So I am actually going to pick #{second} as my new name.

Enjoy saying '#{i1}' more often

;)

"""
