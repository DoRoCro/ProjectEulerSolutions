var p1 = function (number) {
  var result = 0
  for( var i=1;i<number; i++) {
    if (i % 3 === 0 || i % 5 === 0 ){
      result += i
    }
  }
  return result
} 

module.exports = p1
