# /* testing number 600851475143 */
# Solution: 6857

def greatest_prime(num)
  
  def is_prime?(n)
    prime = n == 1 ? false : true
    i = 2
    while i < n**0.5 do
      if n % i == 0
        prime = false
      end
      i += 1
    end
    prime
  end
  
  num_arr = []
  last_num = num**0.5
  j = 2
  while j < last_num do
    if num % j == 0
      num_arr.push(j)
      last_num = num / j
      num_arr.push(last_num)
    end
    j += 1
  end
  
  num_arr.select do |item|
    is_prime?(item)
  end.sort.last
  
end

puts greatest_prime(600851475143)