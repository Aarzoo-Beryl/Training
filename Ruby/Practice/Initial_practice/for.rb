#!/usr/bin/ruby

def age(i)
    @count=0
    for j in (i...18) 
        i+=1
        @count+=1 
    end

    if @count==0
        puts "Already an adult"
    else
        puts "#@count years to become an adult"
    end

end

age(11)

#output - 
#       7 years to become an adult