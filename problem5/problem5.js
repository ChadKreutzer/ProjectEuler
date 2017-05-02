/* 2520 is the smallest number that can be divided by each of the numbers
 * from 1 to 10 without any remainder.
 *
 * What is the smallest positive number that is evenly divisible by all
 * of the numbers from 1 to 20?
 */

const smallestMult = () => {
  var testNum = 2520;
  var mult = false;

  while (!mult){
    testNum++;
    mult = true;
    for (var i = 1; i < 21; i++){
      if(testNum % i) mult = false;
    }
  }
  return testNum;
}

console.log(smallestMult());
