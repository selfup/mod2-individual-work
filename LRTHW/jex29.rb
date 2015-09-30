print "How many people are there? "
i1 = gets.chomp.to_i
print "How many cats do you see? "
i2 = gets.chomp.to_i
print "How many dogs can you pet right now? "
i3 = gets.chomp.to_i

people = i1
cats = i2
dogs = i3

if people < cats
    puts "Too many cats! The world is doomed!"
end

if people > cats
    puts "Not many cats! The world is saved!"
end

if people < dogs
    puts "The world is drooled on!"
end

if people > dogs
    puts "The world is dry!"
end

dogs += 5

if people >= dogs
    puts "People are greater than or equal to dogs."
end

if people <= dogs
    puts "People are less than or equal to dogs."
end

if people == dogs
    puts " People are dogs...?"
end


    