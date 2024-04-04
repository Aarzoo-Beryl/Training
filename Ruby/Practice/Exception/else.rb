#!/usr/bin/ruby

begin
  #raise 'A test exception'
  puts 'raising no exceptions'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
else
  puts "congrats-no error found"
ensure
  puts 'Ensuring expression'
end


#output - 
#           raising no exceptions
#           congrats-no error found
#           Ensuring expression