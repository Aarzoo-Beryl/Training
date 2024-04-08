#1/usr/bin/ruby


def remove(s,p)
    for i in 0..s.length
        s.sub!(p,'')
    end
    return s
end

s = "abracadabracad arshbjbcad"
part ="cad"

puts remove(s,part)

#output - 
#   abraabra arshbjb