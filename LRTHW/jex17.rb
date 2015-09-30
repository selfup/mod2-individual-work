from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line, ow?
in_file = open(from_file)
indata = in_file.read

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exist?(to_file)}"
puts "ready, hit RETURN (ENTER) to continue, CTRL-C (^C) to abort."
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all done."

out_file.close
in_file.close


# TESTING "File.exist?"

sleep(2)

puts "Lemme check if 'RubyFileRules.md' still exists for ya!"

sleep(1)

puts "And the answer is: "
puts "#{File.exist?("RubyFileRules.md")}"

# This program can write to existing files or create it's own.
# Kind of like making a backup file!
# Pretty neat :)

# I would have made this file short and to the point...
# But I rather enjoy how diverse the file is
# So I will defy the tutorial for once this time!
