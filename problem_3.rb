# /* testing number 600851475143 */
# Solution: 6857
# function greatestPrimeFactor(num) {
#   var numArr = [];
#   var end = Math.sqrt(num);
#   for (var i = 2; i <= end; i++) {
#     if (num % i === 0) {
#       numArr.push(i);
#       end = num / i;
#       numArr.push(end);
#     }
#   }
#   return numArr.filter(n => isPrime(n)).sort((a, b) => b - a)[0];

#   function isPrime(n) {
#     var prime = (n === 1) ? false : true;
#     for (var i = 2; i <= Math.sqrt(n); i++) {
#       if (n % i === 0) prime = false;
#     }
#     return prime;
#   }
# }

def greatest_prime number

  number_array = []
  last_number = number**0.5
  i = 2

  def is_prime? num
    prime = num == 1 ? false : true
    i = 2

    while i < num**0.5
      prime = num % i == 0 ? false : true
      i += 1
    end

    prime
  end

  while i < last_number
    if number % i == 0
      number_array.push(i)
      last_number = number / i
      number_array.push(last_number)
      i += 1
    end
  end

  number_array.select {|num| is_prime num }.sort
end

puts greatest_prime 600851475143
