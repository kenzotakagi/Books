var parentFunction = function() {
  var foo = 'foo';
  return function() {
    console.log(foo);
  }
}

var nestedFunction = parentFunction();
nestedFunction();

var sayWord = function() { console.log('word'); }();


var countUpFromZero = function() {
  var count = 0;
  return function() {
    return ++count;
  };
}();
console.log(countUpFromZero());
console.log(countUpFromZero());
console.log(countUpFromZero());

var logElementNumber = function() {
  var funcArray = [];
  var i;
  for (i = 0; i < 3; i++) {
    funcArray[i] = function() { console.log(i); };
  }
  return funcArray;
}();
logElementNumber[0]();
logElementNumber[1]();
logElementNumber[2]();


var logElementNumber = function() {
  var funcArray = [];
  var i;
  var func = function(i) {
    return function() { console.log(i); };
  };
  for (i = 0; i < 3; i++) {
    funcArray[i] = func(i);
  }
  return funcArray;
}();
logElementNumber[0]();
logElementNumber[1]();
logElementNumber[2]();


