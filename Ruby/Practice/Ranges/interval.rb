#1/usr/bin/ruby


if ((1..10)===5)
    puts "5 lies in (1..10)"
end

if (('a'..'j')==='b')
    puts "'b' lies in ('a'..'j')"
end


if (('a'..'j')==='z')
    puts "'z' lies in ('a'..'j')"
end

#output - 
#       5 lies in (1..10)
#       'b' lies in ('a'..'j')