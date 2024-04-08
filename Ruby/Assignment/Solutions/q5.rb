#!/usr/bin/ruby


def permutation(string)

    a = string.chars
    a.permutation{|s| print s ,','}

end


str = 'hello'
permutation(str)

#output - 
# "h", "e", "l", "l", "o"],["h", "e", "l", "o", "l"],["h", "e", "l", "l", "o"],["h", "e", "l", "o", "l"],["h", "e", "o", "l", "l"],["h", "e", "o", "l", "l"],["h", "l", "e", "l", "o"],["h", "l", "e", "o", "l"],["h", "l", "l", "e", "o"],["h", "l", "l", "o", "e"],["h", "l", "o", "e", "l"],["h", "l", "o", "l", "e"],["h", "l", "e", "l", "o"],["h", "l", "e", "o", "l"],["h", "l", "l", "e", "o"],["h", "l", "l", "o", "e"],["h", "l", "o", "e", "l"],["h", "l", "o", "l", "e"],["h", "o", "e", "l", "l"],["h", "o", "e", "l", "l"],["h", "o", "l", "e", "l"],["h", "o", "l", "l", "e"],["h", "o", "l", "e", "l"],["h", "o", "l", "l", "e"],["e", "h", "l", "l", "o"],["e", "h", "l", "o", "l"],["e", "h", "l", "l", "o"],["e", "h", "l", "o", "l"],["e", "h", "o", "l", "l"],["e", "h", "o", "l", "l"],["e", "l", "h", "l", "o"],["e", "l", "h", "o", "l"],["e", "l", "l", "h", "o"],["e", "l", "l", "o", "h"],["e", "l", "o", "h", "l"],["e", "l", "o", "l", "h"],["e", "l", "h", "l", "o"],["e", "l", "h", "o", "l"],["e", "l", "l", "h", "o"],["e", "l", "l", "o", "h"],["e", "l", "o", "h", "l"],["e", "l", "o", "l", "h"],["e", "o", "h", "l", "l"],["e", "o", "h", "l", "l"],["e", "o", "l", "h", "l"],["e", "o", "l", "l", "h"],["e", "o", "l", "h", "l"],["e", "o", "l", "l", "h"],["l", "h", "e", "l", "o"],["l", "h", "e", "o", "l"],["l", "h", "l", "e", "o"],["l", "h", "l", "o", "e"],["l", "h", "o", "e", "l"],["l", "h", "o", "l", "e"],["l", "e", "h", "l", "o"],["l", "e", "h", "o", "l"],["l", "e", "l", "h", "o"],["l", "e", "l", "o", "h"],["l", "e", "o", "h", "l"],["l", "e", "o", "l", "h"],["l", "l", "h", "e", "o"],["l", "l", "h", "o", "e"],["l", "l", "e", "h", "o"],["l", "l", "e", "o", "h"],["l", "l", "o", "h", "e"],["l", "l", "o", "e", "h"],["l", "o", "h", "e", "l"],["l", "o", "h", "l", "e"],["l", "o", "e", "h", "l"],["l", "o", "e", "l", "h"],["l", "o", "l", "h", "e"],["l", "o", "l", "e", "h"],["l", "h", "e", "l", "o"],["l", "h", "e", "o", "l"],["l", "h", "l", "e", "o"],["l", "h", "l", "o", "e"],["l", "h", "o", "e", "l"],["l", "h", "o", "l", "e"],["l", "e", "h", "l", "o"],["l", "e", "h", "o", "l"],["l", "e", "l", "h", "o"],["l", "e", "l", "o", "h"],["l", "e", "o", "h", "l"],["l", "e", "o", "l", "h"],["l", "l", "h", "e", "o"],["l", "l", "h", "o", "e"],["l", "l", "e", "h", "o"],["l", "l", "e", "o", "h"],["l", "l", "o", "h", "e"],["l", "l", "o", "e", "h"],["l", "o", "h", "e", "l"],["l", "o", "h", "l", "e"],["l", "o", "e", "h", "l"],["l", "o", "e", "l", "h"],["l", "o", "l", "h", "e"],["l", "o", "l", "e", "h"],["o", "h", "e", "l", "l"],["o", "h", "e", "l", "l"],["o", "h", "l", "e", "l"],["o", "h", "l", "l", "e"],["o", "h", "l", "e", "l"],["o", "h", "l", "l", "e"],["o", "e", "h", "l", "l"],["o", "e", "h", "l", "l"],["o", "e", "l", "h", "l"],["o", "e", "l", "l", "h"],["o", "e", "l", "h", "l"],["o", "e", "l", "l", "h"],["o", "l", "h", "e", "l"],["o", "l", "h", "l", "e"],["o", "l", "e", "h", "l"],["o", "l", "e", "l", "h"],["o", "l", "l", "h", "e"],["o", "l", "l", "e", "h"],["o", "l", "h", "e", "l"],["o", "l", "h", "l", "e"],["o", "l", "e", "h", "l"],["o", "l", "e", "l", "h"],["o", "l", "l", "h", "e"],["o", "l", "l", "e", "h"]