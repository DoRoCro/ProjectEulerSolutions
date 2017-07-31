/* eslint-env mocha */
var assert = require('assert')
var P5 = require('../P5.js')
describe('P5', function () {
  // var P5

  beforeEach('before each', function () {
  })
  it('should determine 2520 evenly divisible by 10', function () {
    assert.strictEqual(P5.isEvenlyDivisible(2520, 10), true)
  })

  it('should determine 2519 is not evenly divisible by 10', function () {
    assert.strictEqual(P5.isEvenlyDivisible(2519, 10), false)
  })

  it('should generate 2520 for 10', function () {
    assert.strictEqual(P5.generate(10), 2520)
  })
})
