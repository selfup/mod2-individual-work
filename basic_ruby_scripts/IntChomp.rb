#Basic "gets.chomp" program. 

#This one assigns said user input as an integer.
print "Give me a number "
i1 = gets.chomp.to_i

o1 = i1 * 100
puts " A bigger number is #{o1}"

#This one assigns the answer as a float since it will be divided (float result likely)
print "Give me another number! "
i2 = gets.chomp
i2 = i2.to_f

o2 = i2 / 10
puts "A smaller number is #{o2}."

#This is just a basic age query to guestimate how old their youngest parent is.
print "How old are you? "
i3 = gets.chomp.to_i

o3 = i3 + 20
puts "Your youngest parent is probably #{o3} years old!"

#This is to show some humanity.
print "Was I wrong about your youngest parent? (Yes or No) "
i4 = gets.chomp

o4 = i4 + "? Hmmm..."
puts "So you are telling me #{o4}"

#first_name of initial user as well as first_name of his/her best friend.
print "What is your First Name? "
fna1= gets.chomp

o5 = fna1
puts "So your First Name is #{o5}. Now give me your best friends First Name!"

print "What is your best friends First Name? "
fna2 = gets.chomp

o6 = fna2
puts """
So your First Name is #{o5}
...and your best friends First Name is #{o6}
Voila!
"""
