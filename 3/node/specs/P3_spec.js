var assert = require('assert')
var p3 = require('../P3.js')
describe('p3', function () {
  // var p1

  beforeEach('before each', function () {
    // p1 = new p1()
  })
  it('should calculate 29 for 13195', function () {
    assert.strictEqual(p3(13195), 29)
  })
  it('should calculate 5 for 15', function () {
    assert.strictEqual(p3(15), 5)
  })
})
