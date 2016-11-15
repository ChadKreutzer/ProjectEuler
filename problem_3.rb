# /* testing number 600851475143 */
# Solution: 6857

def greatest_prime(num)  
  num_arr = []
  last_num = num**0.5

  (2...last_num).each do |j|
    if num % j == 0
      num_arr.push(j)
      last_num = num / j
      num_arr.push(last_num)
    end
  end
  
  num_arr.select { |item| is_prime?(item) }.sort.last
end

def is_prime?(n)
  prime = n == 1 ? false : true

  (2...n**0.5).each do |i|
    if n % i == 0 then prime = false end
  end
  
  prime
end

puts greatest_prime(600851475143)
