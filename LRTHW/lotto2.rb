print "give me a low number: "; i1 = gets.chomp.to_i; puts ""
print "give me a high number "; i2 = gets.chomp.to_i; puts ""

# empty array (a1) 
a1 = []

# variable for Random.new 
prng = Random.new

# low to high number (i1..i2) - .each pushing to empty a1 array
(i1..i2).each do |list|
  a1.push(list)
end

puts "#{a1}.."

# choosing a random number to define a new variable
# this number will be used to choose what pushed number to pull from the a1 array
rn = prng.rand(i1..i2); rm = (rn - 1) # (rn - 1) ensures position is never outside of the array
sleep(2); puts "OK, thanks!"
puts "Now give me your best guess as to what number will be drawn... "; i3 = gets.chomp.to_i
sleep(2); puts "The number is: #{a1[rm]}"; sleep(2)
puts "Were you right? Let find out!"; sleep(2)

if i3 == a1[rn]; puts "NICE! YOU WERE RIGHT!"; else puts "Nooooope! Sorry!"; end
