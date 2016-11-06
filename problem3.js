/* testing number 600851475143 */
/* Solution: 6857 */

function greatestPrimeFactor(num) {
	
	function isPrime(n) {
		var prime = (n === 1) ? false : true;
		for (var i = 2; i <= Math.sqrt(n); i++) {
			if (n % i === 0) prime = false;
		}
		return prime;
	}
	
	var numArr = [];
	var lastNum = Math.sqrt(num);
	for (var j = 2; j <= lastNum; j++) {
		if (num % j === 0) {
			numArr.push(j);
			lastNum = num / j;
			numArr.push(lastNum);
		}
	}
	
	return numArr.filter(n => isPrime(n))
		.sort((a, b) => b - a)[0];
}

console.log(greatestPrimeFactor(600851475143));
