var myFunction = function() {};
myFunction.prototype = {};
console.log(myFunction.prototype);

Array.prototype.foo = 'foo';
var myAry = new Array();
console.log(myAry.__proto__.foo);
