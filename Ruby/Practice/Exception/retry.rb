#!/usr/bin/ruby

begin 
	file = open("/unseen_file")
	if file
		puts"file opened"
	end

rescue 
	fname = "existant_file"
	retry
end

#here first an exception occured at open , then went to rescue, fname was re-assigned,by retry went to the beginning of the begin,
#this time file opens successfully and continued the essential process
