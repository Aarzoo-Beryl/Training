# Ruby program to illustrate 
# Symbol objects 

# context 3 
module Geeks1 

  class Max 
  end
  $a1 = :Max 
end
  
  # context 1 
module Geeks2 
  
  Max = 1
  $a2 = :Max 
end
  
  # context 2 
def Max() 
  
end 
  
  $a3 = :Max 
  
  puts $a1.object_id 
  puts $a2.object_id 
  puts $a3.object_id 

  
#output - 
#       1675428
#       1675428
#       1675428