def factorial_one(num)
  (1..num).reduce(:*) || 1  # => 24
end

def factorial_two(num)
  (1..num).inject(:*) || 1  # => 40320
end

def factorial_three(num)
  (1..num).inject do |factorial, n|  # => 1..6
    factorial * n                    # => 2, 6, 24, 120, 720
  end                                # => 720
end

factorial_one(4)    # => 24
factorial_two(8)    # => 40320
factorial_three(6)  # => 720
