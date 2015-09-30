# THINGS are about to get strange...
empty = []

puts "Guess a number between 1 and 200"; puts " "
puts "I will give you three chances!"; puts " "
print "First pick: "; i1 = gets.chomp.to_i; puts " "
print "Second pick: "; i2 = gets.chomp.to_i; puts " "
print "Third pick: "; i3 = gets.chomp.to_i; puts " "

(50..70).each do |wut|
  empty.push(wut)
end

puts "Drawing numbers!"
puts " "

count = 201
201.times do
  count -= 1
  print count.to_s + ".."
end

puts " "; puts " "

sleep(5)

# Output results 50 - 69
puts "The winning number might be: "
empty.each { |wut| print " -#{wut}- " }; puts " "; puts " "

sleep(2)

puts "If you inputed #{empty[5]} you will win!"; puts " "

sleep(2)

if 
  i1 == empty[5]; puts "YOU WON!"; puts "YOU WON!"; puts "YOU WON!"
  elsif
  i2 == empty[5]; puts "YOU WON!"; puts "YOU WON!"; puts "YOU WON!"
  elsif 
  i3 == empty[5]; puts "YOU WON!"; puts "YOU WON!"; puts "YOU WON!"
  else; puts "Better luck next time!"
end


