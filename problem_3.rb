# /* testing number 600851475143 */
# Solution: 6857

def greatest_prime(num)
  num_arr = []
  last_num = num**0.5

  (2...last_num).each do |j|
    next unless (num % j).zero?
    num_arr.push(j)
    last_num = num / j
    num_arr.push(last_num)
  end
  num_arr.select { |item| prime?(item) }.sort.last
end

def prime?(n)
  prime = n == 1 ? false : true

  (2...n**0.5).each { |i| prime = false if (n % i).zero? }
  prime
end

puts greatest_prime(600_851_475_143)
