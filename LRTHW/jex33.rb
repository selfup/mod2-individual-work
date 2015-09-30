puts "What range of numbers would you like described in increments?"
b1 = gets.chomp.to_i
puts "What kind of increments do you want in your range?"
a1 = gets.chomp.to_i

def chi(b1, a1)
i = 0
numbers = []

while i <= b1
  puts "At the top i is #{i}"
  numbers.push(i)
  
  i += a1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end
  
  puts "The numbers: "
  
  # remember you can write this 2 other ways?
  numbers.each { |ex1| puts ex1 }
end

chi(b1, a1) 

puts "BREAK BREAK BREAK BREAK BREAK"
puts "What range of numbers would you like described in increments?"
d1 = gets.chomp.to_i
puts "What kind of increments do you want in your range?"
c1 = gets.chomp.to_i

chi(d1, c1)
  
