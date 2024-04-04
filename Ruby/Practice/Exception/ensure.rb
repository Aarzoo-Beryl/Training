#!/usr/bin/ruby

begin
  raise 'A test exception'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
ensure
  puts 'Ensuring expression'
end


#output - 
#           A test exception
#           ["ensure.rb:4:in `<main>'"]
#           Ensuring expression
