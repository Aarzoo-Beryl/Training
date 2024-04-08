#1/usr/bin/ruby



def factorial(n)
  factorial = [1]
  (1..n).each do |i|
    factorial << factorial[-1] * i
  end
  print factorial
end


factorial(7)

#output - 
#       [1, 1, 2, 6, 24, 120, 720, 5040]