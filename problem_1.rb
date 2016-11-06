# /* the sum of all the multiples of 3 or 5 below 1000 */
# solution: 233168
# function mult3and5(num){
#   var sum = 0;
#   for(var i = 0; i <= num; i++){
#     if(i % 3 === 0 || i % 5 === 0) sum += i;
#   }
#   return sum;
# }

def multiples_of_3_and_5 number
  sum = 0
  i = 0

  while i < number
    if i % 3 == 0 || i % 5 == 0
      sum += i
    end
    i += 1
  end
  sum
end

puts multiples_of_3_and_5 1000