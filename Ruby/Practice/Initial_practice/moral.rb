#!/use/bin/ruby

module Moral
    VERY_BAD = 0
    BAD = 1
    def Moral.sin(badness)
        puts "the person is #{badness}..."
    end
end