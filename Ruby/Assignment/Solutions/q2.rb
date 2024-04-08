#!/usr/bin/ruby


def reverse(string)
  return string if string.empty? == true
	return reverse(string[1..-1]) + string[0]
end



str = 'this is the first line of the paragarph'

puts reverse(str)


#output -
#				hpragarap eht fo enil tsrif eht si siht