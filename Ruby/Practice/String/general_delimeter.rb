x = %{Ruby is fun}
y = %Q{Ruby is good}
z = %q[Ruby is obejct oriented]
a = %x!ls!



puts "#{a}\n#{x}\n#{y}\n#{z}"

#output - 
#       general_delimeter.rb
#       substitution.rb
#       
#       Ruby is fun
#       Ruby is good
#       Ruby is obejct oriented