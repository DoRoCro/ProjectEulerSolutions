var factor = function (number) {
  // 'borrowed' from http://www.javascripter.net/math/primes/factorization.htm
  if (isNaN(number) || !isFinite(number) || number % 1 !== 0 || number === 0) return number
  if (number < 0) return '-' + factor(-number)
  var minFactors = []
  if (number > 1) {
    minFactors = minFactors.concat(leastFactor(number))
  }
  return minFactors.concat(factor(number / minFactors[minFactors.length - 1]))
}

// find the least factor in n by trial division
function leastFactor (n) {
  if (isNaN(n) || !isFinite(n)) return NaN
  if (n === 0) return 0
  if (n % 1 || n * n < 2) return 1
  if (n % 2 === 0) return 2
  if (n % 3 === 0) return 3
  if (n % 5 === 0) return 5
  var m = Math.sqrt(n)
  for (var i = 7; i <= m; i += 30) {
    if (n % i === 0) return i
    if (n % (i + 4) === 0) return i + 4
    if (n % (i + 6) === 0) return i + 6
    if (n % (i + 10) === 0) return i + 10
    if (n % (i + 12) === 0) return i + 12
    if (n % (i + 16) === 0) return i + 16
    if (n % (i + 22) === 0) return i + 22
    if (n % (i + 24) === 0) return i + 24
  }
  return n
}
var p3 = function (number) {
  var factors = factor(number)
  factors.pop()
  return factors.pop()
}
module.exports = p3

// const answer = p3(13195)
const answer = p3(600851475143)
console.log('The answer is: ' + answer)
