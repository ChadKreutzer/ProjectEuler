# /* the sum of all the multiples of 3 or 5 below 1000 */
# solution: 233168

def multiples_of_3_and_5(number)
  sum = 0

  (0...number).each do |i|
    sum += i if (i % 3).zero? || (i % 5).zero?
  end
  sum
end

puts multiples_of_3_and_5(1000)
