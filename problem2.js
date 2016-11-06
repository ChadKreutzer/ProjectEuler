/* Sum of even Fibonacci numbers below 4,000,000 */
function sumEvenFibs(num) {
	var sum = 0,
		temp = 0,
		start = 1,
		next = 2;
	
	while(next < num){
		if(next % 2 === 0) sum += next;
		temp = next;
		next = start + next;
		start = temp;
	}
	return sum;
}