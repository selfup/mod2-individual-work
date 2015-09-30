print "How old are you?"
age = gets.chomp
print "How tall are you?"
height = gets.chomp
print "How much do you weigh?"
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

# NOW TO VEER OFF

# TO MY WAY OF DOING things, yea sorry about the caps! :P

sleep(2)

puts "Now let's try this little program!"

print "How old are you?"
i1 = gets.chomp
print "How tall are you?"
i2 = gets.chomp
print "How much do you weight in lbs?"
i3 = gets.chomp.to_i

mo1 = i3 * 1.2 # "mo" stands for modified output

puts "So, you are #{i1} old, #{i2} tall, and you weigh #{mo1}lbs?"

sleep (2)

puts "I AM TOTALLY KIDDING"
puts "I know you weigh #{i3}"

sleep(2)

puts ":P"
