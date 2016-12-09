# /* Sum of even Fibonacci numbers below 4,000,000 */
# Solution: 4613732

def sum_even_fibs(number)
  sum = 0
  start = 1
  next_fib = 2

  while next_fib < number
    sum += next_fib if next_fib.even?
    temp = next_fib
    next_fib = start + next_fib
    start = temp
  end
  sum
end

puts sum_even_fibs 4_000_000
