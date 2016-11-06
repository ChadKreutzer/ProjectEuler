# /* Sum of even Fibonacci numbers below 4,000,000 */
# Solution: 4613732

def sum_even_fibs number
  sum = 0
  temp = 0
  start = 1
  next_fib = 2

  while next_fib < number
    if next_fib % 2 == 0 then sum += next_fib end
    temp = next_fib
    next_fib = start + next_fib
    start = temp
  end

  sum
end

puts sum_even_fibs 4_000_000