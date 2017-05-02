// Largest Palindrome of two 3 digit numbers

const largestPalindrome = () => {
  let currentPalindrome = 0;
  for (var i = 100; i < 1000; i++){
    for (var j = 100; j < 1000; j++){
      var tempProduct = i * j;
      if (isPalindrome(tempProduct) && tempProduct > currentPalindrome){
        currentPalindrome = tempProduct;
      }
    }
  }
  return currentPalindrome;
}

const isPalindrome = (testValue) => {
  let reverseTest = testValue.toString().split('').reverse().join('');
  if (testValue.toString() === reverseTest) return true;
  return false;
}

console.log(largestPalindrome());
