# HOMEWORK / STUDY DRILL FILE
# LINES 38 AND 41 HAVE BEEN MODIFIED

input_file = ARGV.first # Delacring input_file as the first argument
                        # after the file name in terminal
                        # this will assign the wanted file name
                        # to the "input_file" variable

def print_all(f) # Here we define the print_all function to use the f parameter
    puts f.read  # It seems to put string "f" and use the
end              # .read method

def rewind(f) # Here we define the rewind function and use the "f" parameter
    f.seek(0) # the seek method is applied to the f parameter
end           # It is set to "0" so it will start at the very beginning

def print_a_line(line_count, f)           # parameters "line_count" and "f"
    puts "#{line_count}, #{f.gets.chomp}" # line_count gets used at lines:
end                                       # 35, 38, and 41 and it is defined
                                          # at line 35 as "current_line"

current_file = open(input_file) # will try to "open" -> "input_file"
                                # wether defined or not

puts "First let's print the whole file:\n"

print_all(current_file) # Opens "input_file"

puts "Now let's rewind, kind of like a tape."

rewind(current_file) # Goes back to line 0 (the zeroth byte) in current file

puts "Let's print three lines:"

current_line = 1 # Defines the "current_line" integer for the "line_count" param.
print_a_line(current_line, current_file)

current_line += 1 # THIS ADDS "1" to the current_line COUNT...ex: 1 + 1 = 2
print_a_line(current_line, current_file)

current_line += 1 # THIS ADDS "1" to the current_line COUNT...ex 2 + 1 = 3
print_a_line(current_line, current_file)
