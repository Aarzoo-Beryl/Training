#!/usr/bin/ruby

def age(i,count=0)
    unless i>=18
        i += 1
        count += 1
        age(i,count)
    else 
        puts "#{count} years left to become an adult"
    end
end

age(15)



#output - 
#       3 years left to become an adult
