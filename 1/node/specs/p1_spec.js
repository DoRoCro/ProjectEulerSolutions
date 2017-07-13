var assert = require('assert')
var p1 = require('../p1.js')
describe('P1', function () {
  // var p1

  beforeEach('before each', function () {
    // p1 = new p1()
  })
  it('should calculate 23 for 10', function () {
    assert.strictEqual( p1(10), 23)
  })
  it('should calculate 3 for 4', function () {
    assert.strictEqual(p1(4),3)
  })
  it('should calculate 233168 for 1000', function () {
    assert.strictEqual( p1(1000), 233168)
  })

})
