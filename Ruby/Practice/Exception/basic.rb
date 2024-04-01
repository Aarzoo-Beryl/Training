#!/usr/bin/ruby

begin 
    file = open("/unseen_file")
    if file
        puts"file opened"
    end

rescue 
    file = STDIN
end

print file,"==",STDIN,"\n"



#output - #<IO:0x000055c7573c1be8>==#<IO:0x000055c7573c1be8>

#here SDTIN was substituted to the file because file open failed
