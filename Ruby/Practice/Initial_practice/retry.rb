#!/usr/bin/ruby

begin
    for i in 0..5
        raise "Exception" if i > 2
        print "#{i},"
    end
rescue
    retry
end



#output-
#       0,1,2,0,1,2,0,1,2,0,1,2,0,1,2,0,1,2,0,1,2,0,1,2,0,1,2,0,1,2,0,1,2,0,1,2,0,1,2,0,1,2,0,1,.......