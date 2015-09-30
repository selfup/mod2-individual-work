def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b # return simply means perform said action or "this will equal"
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b # remember return is what comes after the "=" sign
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5) # 5-(b) will be added to 30-(a) (a + b)
height = subtract(78, 4) # 4 will be subtracted from 78 (a - b)
weight = multiply(90, 2) # 90 will be multiplied 2 times (90 * 2)
iq = divide(100, 2) # 100 will be divided by two (100 / 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"

# Doing it by hand! -->
# 50 / 2 = 25
# 180 * 25 = 4500
# 74 - 4500 = (-4426)
# 35 + (-4426) = 4391
# I got it! :)
