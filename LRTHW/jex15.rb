filename = ARGV.first

txt = open(filename)

puts "Here's your file #{filename}:"
print txt.read

print "Type in the Ruby Rules Doc name: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
