# /* the sum of all the multiples of 3 or 5 below 1000 */
# solution: 233168

def multiples_of_3_and_5 number
  sum = 0
  
  (0...number).each do |i|
    if i % 3 == 0 || i % 5 == 0 then sum += i end
  end
  sum
end

puts multiples_of_3_and_5(1000)
