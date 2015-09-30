#FizzBuzz Program!

puts "BEGIN INITIATION SEQUENCE"

sleep(2) #Pauses the program for 2 seconds

1.upto(100) do |i|
  if i % 5 == 0 and i % 3 == 0 #IF Divisible by 5 and 3 then output "FizzBuzz"
    puts "FizzBuzz"
  elsif i % 5 == 0 #IF Divisible by 5 then output "Buzz"
    puts "Buzz"
  elsif i % 3 == 0 #IF Divisible by 3 then output "Fizz"
    puts "Fizz"
  else
    puts i
  end
end

sleep(2) #Pauses for 2 seconds once again

puts "INITIATION SEQUENCE COMPLETE"

#END OF PROGRAM!
