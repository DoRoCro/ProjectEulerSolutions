var P5isEvenlyDivisible = function (number, divisor) {
  for (var i = 1; i < divisor; i++) {
    if (number % i !== 0) return false
  }
  console.log('got here')
  return true
}

module.exports = P5isEvenlyDivisible
console.log('2520 is divisible? ', P5isEvenlyDivisible(2520))
