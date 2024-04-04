#!/usr/bin/ruby

def method(a="aarzoo",b='abhishek')
  return a,b
end

a=method("vijay","sunita")
b=method()

puts a
puts b



#output - 
#       vijay
#       sunita
#       aarzoo
#       abhishek