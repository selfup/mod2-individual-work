username, age = ARGV

prompt = '..... '

puts "Hi #{username}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{username}? ", prompt
likes = $stdin.gets.chomp

puts "Where do you live #{username}? ", prompt
lives = $stdin.gets.chomp

puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer}. Nice.
Ohh...and your like #{age} old...?
"""
# This was the standard program that rubythehardway wanted me to write
# However I did change a few things!
