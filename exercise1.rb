total = 0

(0...1000).each do |i|
total += i if (i%3 == 0 || i%5 == 0)
end

puts total


# Other method 
# Why does this work? papa works out the sum of multiples of multiple up to but not including to (it relies on integer division). 
# It first works out the number of number of multiples being summed (n), then multiples the standard formula for the sum of 1..n = n(n+1)/2 by multiple. 
# Using this, we can add together the sums for the multiples of 3 and 5. 
# We must then not forget that some numbers are multiples of both 3 and 5, so we subtract multiples of 15 (3*5).

def papa(multiple, to)
    n = (to-1) / multiple
    n * (n+1) / 2 * multiple
end

puts papa(3, 10) + papa(5, 10) - papa(15, 10)

puts papa(3, 1000) + papa(5, 1000) - papa(15, 1000)
