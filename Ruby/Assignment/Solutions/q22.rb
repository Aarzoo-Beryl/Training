#!/usr/bin/ruby

def pairs(a,k)
  pair = []
  n = a.length
  for i in (0...n)
    for j in ((i + 1)...n)
      if a[i]-a[j] == k
        pair << [a[i], a[j]]
      end
    end
  end
  return pair
end


a = [1,3,1,5,4,2]
k = 2
print pairs(a,k)


#output - 
#			[[3, 1], [4, 2]]