/* testing number 600851475143 */
function greatestPrimeFactor(num) {
	var numArr = [];
	var end = Math.sqrt(num);
	for (var i = 2; i <= end; i++) {
		if (num % i === 0) {
			numArr.push(i);
			end = num / i;
			numArr.push(end);
		}
	}
	return numArr.filter(n => isPrime(n)).sort((a, b) => b - a)[0];

	function isPrime(n) {
		var prime = (n === 1) ? false : true;
		for (var i = 2; i <= Math.sqrt(n); i++) {
			if (n % i === 0) prime = false;
		}
		return prime;
	}
}
