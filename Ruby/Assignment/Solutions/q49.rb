#!/usr/bin/ruby

require 'date'

def palindrome_date(str)
    d = Date.strptime(str, "%d/%m/%Y")
    date = d.strftime("%d%m%Y")
    return date == date.reverse
end

str = "02/02/2020"
puts palindrome_date(str)


#output - 
#       true