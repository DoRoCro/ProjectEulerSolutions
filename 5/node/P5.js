var isEvenlyDivisible = function (number, divisor) {
  for (var i = 1; i < divisor; i++) {
    if (number % i !== 0) return false
  }
  return true
}

var generate = function (number) {
  var product = 1
  for (var i = 1; i < number; i++) {
    product *= i
  }
  // now filter out repeated factors - not sure if this is rigorous
  // but works for 10, 20.
  var target = product
  for (i = 2; i < number; i++) {
    while (isEvenlyDivisible(target / i, number)) {
      target /= i
    }
  }
  return target
}

exports.isEvenlyDivisible = isEvenlyDivisible
exports.generate = generate

console.log('2520 is divisible? ', isEvenlyDivisible(2520, 10))
console.log('generate 10 gives ', generate(10))
console.log('generate 20 gives ', generate(20))
console.log('The answer is: ', generate(20))
