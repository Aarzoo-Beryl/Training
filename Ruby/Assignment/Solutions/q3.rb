#! usr/bin/ruby


def reverse_vowels(string)
	vowel = ['a','e','i','o','u','A','E','I','O','U']
	i = 0
	j = string.length
	while i<j
		i += 1 until i >= j || vowel.include?(string[i])
		j -= 1 until i >= j || vowel.include?(string[j])
		string[i] , string[j] = string[j] , string[i]
		i += 1
		j -= 1
	end
	puts string
end

str = 'aarzoo'
reverse_vowels(str)


#output - 
#       oorzaa
