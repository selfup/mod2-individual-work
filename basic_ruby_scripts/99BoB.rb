#99 Bottles of Beer on the Wall!
#Here we go!
puts; puts "   It's beer song time!"; puts
#Integer definition
def bottles(i)
  i == 1 ? "#{i} bottle" : "#{i} bottles"
end
#Defining the Count
@count = 99
#Defining the order in which things happen
@count.downto(1)  {
puts <<BEERSONG
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*
   #{bottles(@count)} of beer on the wall
   #{bottles(@count)} of beer
   Take one down, pass it around
   #{bottles(@count -= 1)} of beer on the wall
BEERSONG
}
#End of song!
puts "*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*"
puts; puts "   No more beer on the wall :("
#All done!
