var parentFunction = function() {
  var foo = 'foo';
  return function() {
    console.log(foo);
  }
}

var nestedFunction = parentFunction();
nestedFunction();
