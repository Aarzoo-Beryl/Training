#!/usr/bin/ruby

begin
    raise 'A test exception'
rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
end


#output - 
#           A test exception
#           ["raise.rb:4:in `<main>'"]
