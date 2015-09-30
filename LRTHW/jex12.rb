print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}"

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 4
puts "A smaller number is #{smaller}."

#New stuff NEW STUFF

print "Give me a ridiculous number: "
i1 = gets.chomp.to_f
o1 = i1 * 1.234

puts "Now this is even more ridiculous!"
puts "***   #{o1}   ***"

#END OF New stuff
# :P
