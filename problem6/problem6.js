/* Find the difference between the sum of the squares of the first
 * one hundred natural numbers and the square of the sum.
 */

const squareDiffs = () => {
  var sumSquares = 0, squareSums = 0;

  for (var i = 1; i < 101; i++){
    sumSquares += i * i;
    squareSums += i;
  }

  return (squareSums * squareSums) - sumSquares;
}

console.log(squareDiffs());
