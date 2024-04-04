#!/usr/bin/ruby

catch :finish do
  5.times do |i|
    puts "Iteration #{i}"
    throw :finish if i == 2
  end
end
puts "Finished!"


#output - 
#        Iteration 0
#        Iteration 1
#        Iteration 2
#        Finished! 


#explaination - when the condidion inside throe is met the control is transfered to the catch block and it terminates the loop