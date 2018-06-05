var parentFunction = function() {
  var foo = 'foo';
  return function() {
    console.log(foo);
  }
}

var nestedFunction = parentFunction();
nestedFunction();


var logElementFunction = function () {
  funcArray = [];
  var i;
  for (i = 0; i < 3; i++) {
    funcArray[i] = function () { console.log(i); };
  }

  return funcArray;

}();

