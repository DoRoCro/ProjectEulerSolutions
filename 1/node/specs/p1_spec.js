var assert = require('assert')
var p1 = require('../p1.js')
describe('P1', function () {
  // var p1

  beforeEach('before each', function () {
    // p1 = new p1()
  })
  it('should calculate 23 for 10', function () {
    assert.strictEqual(23, p1(10))
  })

})
