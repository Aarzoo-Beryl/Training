#1/usr/bin/ruby


def last_city(p)
	start = []
	last = []
	p.each do |x|
		start << x[0]
		last << x[1]
	end
	puts (last - start).first
end


paths = [["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]]
last_city(paths)

#output - 
#			Sao Paulo