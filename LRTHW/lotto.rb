# THINGS are about to get strange...
winning_number = []
# inserting stuff
puts "Guess a number between 1 and 200"; puts " "
puts "I will give you three chances!"; puts " "
print "First pick: "; i1 = gets.chomp.to_i; puts " "
print "Second pick: "; i2 = gets.chomp.to_i; puts " "
print "Third pick: "; i3 = gets.chomp.to_i; puts " "

prng = Random.new

aaa = prng.rand(0..100)
bbb = prng.rand(101..200)
ccc = prng.rand(bbb - aaa)

(aaa..bbb).each do |wut|
  winning_number.push(wut)
end

puts "Drawing numbers!"
puts " "

sleep(2)

count = 201
201.times do
  count -= 1
  print count.to_s + ".."
end

puts " "; puts " "

sleep(5)

# Output results 50 - 69
puts "The winning number is one of these: "
winning_number.each { |wut| print " -#{wut}- " }; puts " "; puts " "

sleep(3)

puts "If you inputed #{winning_number[ccc]} you will win!"; puts " "

sleep(2)

if 
  i1 == winning_number[ccc]; puts "YOU WON!"; puts "YOU WON!"; puts "YOU WON!"
  elsif
  i2 == winning_number[ccc]; puts "YOU WON!"; puts "YOU WON!"; puts "YOU WON!"
  elsif 
  i3 == winning_number[ccc]; puts "YOU WON!"; puts "YOU WON!"; puts "YOU WON!"
  else; puts "Better luck next time!"
end


