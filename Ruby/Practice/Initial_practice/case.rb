#!/usr/bin/ruby

def age(i)
    case i 
    when 0..4
        puts "infant"
    when 5..11
        puts "child"
    when 12..17
        puts "teenager"
    else 
        puts "adult"
    end
end

age(10)

#output - 
#          child