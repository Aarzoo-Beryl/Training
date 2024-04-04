#!/usr/bin/ruby


def age(name,integer)
	@name = name
	if integer>=18
		puts "#@name is an adult"
	else 
		puts "#@name is a minor"
	end
end

age("Aarzoo", 21)




#output-
#       Aarzoo is an adult