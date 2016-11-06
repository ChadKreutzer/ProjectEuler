/* the sum of all the multiples of 3 or 5 below 1000 */
/* solution: 233168 */

function mult3and5(num){
	var sum = 0;
	
	for(var i = 0; i <= num; i++){
		if(i % 3 === 0 || i % 5 === 0) sum += i;
	}
	return sum;
}

console.log(mult3and5(1000));
