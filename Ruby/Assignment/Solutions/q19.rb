#!/usr/bin/ruby


def max_product(a)
    max = a[0]
    result = a[0]
  
    (1...a.length).each do |i|
      if a[i] < 0
        max = max
      end
      max = [a[i], a[i] * max].max
      result = [result, max].max
    end
    return result
  end
  
  x=[2,3,-2,5,6]
  puts max_product(x)