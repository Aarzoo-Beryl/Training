#!usr/bin/ruby

def roman_to_integer(s)
    array = s.chars
    a = 0
    roman = {"I" => 1,"V" => 5,"X" => 10,"L" => 50,"C" => 100,"D" => 500,"M" => 1000}
    for i in array
        a += roman[i]
    end
    return a
end

s = "MDCLXXVIII"
puts roman_to_integer(s)

#output - 
#       1678