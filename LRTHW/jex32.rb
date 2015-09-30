puts "A value: "; zz = gets.chomp # This is my way of making things fun for the user!
puts "Another value: "; qw = gets.chomp
puts "Gimme another value! "; yu = gets.chomp
puts "I hungriez for valuez"; lo = gets.chomp
puts "Okie last one: "; plk = gets.chomp # Ok done gathering random input

c =  [1, 2, 3, 4, 5]
f = ['apples', 'oranges', 'pear', 'apricaots']
ch = [1, 'pennies', 2, 'dimes', 3, 'quarters']
sc = ['SCREAM', '5CR34M', "5cr34m", 'scream', "All I got is..", ch]
xy = [zz, qw, yu, lo, plk]


#this first kind of for-loop goes through a list
# in a more traditional style found in other languages
for number in c
  puts "This is count #{number}"
end

# same as above, but in a more Ruby style
# this and the next one are the preferred
# way Ruby for-loops are written

f.each do |fruit|
    puts "A fruit of type: #{fruit}"
end

# also we can go though mixed lists too
# note this is yet another style, exactly like above
# but a different syntax

ch.each { |i| puts "I got #{i}" }

sc.each { |a| puts "I REALLY GOTTA #{a}" }

# This is where I output those random values!!!
xy.each { |iii| puts "THESE ARE THE VALUES YOU GAVE ME! ~ #{iii}" }


# we can also build lists, first start with an empty one
e = []

# then use the range operator to do 0 to 5 counts
(0..5).each do |klmnop|
    puts "adding #{klmnop} to the list"
    # pushes the i variable on the *end* of the list
    e.push(klmnop)
end

# now we can print them out too

e.each { |i| puts "Element was: #{i}" }


# THINGS are about to get strange...
empty = []

puts "Guess a number between 1 and 200"
puts "I will give you three chances!"
puts " "
print "First pick: "
i1 = gets.chomp.to_i
puts " "
print "Second pick: "
i2 = gets.chomp.to_i
puts " "
print "Third pick: "
i3 = gets.chomp.to_i

(50...70).each do |wut|
    puts "Yea I'm feelin' #{wut}"
    empty.push(wut)
end

sleep(5)

# Output results 50 - 69
empty.each { |wut| puts "The winning number might be: #{wut}" }

puts "If you inputed #{empty[5]} you will win!..."

sleep(2)

if i1 or i2 or i3 = empty[5]
    puts "YOU WON!"
    puts "YOU WON!"
    puts "YOU WON!"
else
    puts "Better luck next time!"
end


