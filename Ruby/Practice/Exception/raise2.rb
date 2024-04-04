#!/usr/bin/ruby

begin
  puts "before raise"
  raise 'A test exception'
  puts "after raise"
rescue 
  puts "rescued"
end
puts 'after begin block'


#output - 
#          before raise
#          rescued
#          after begin block 