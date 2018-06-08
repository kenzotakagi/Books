var myFunction = function() {};
myFunction.prototype = {};
console.log(myFunction.prototype);

Array.prototype.foo = 'foo';
var myAry = new Array();
console.log(myAry.__proto__.foo);

var myFunction = function() {};
console.log(myFunction.prototype);
console.log(typeof myFunction.prototype);

var Foo = function Foo() {};
Foo.prototype = {};
var fooInstance = new Foo();
console.log(fooInstance.constructor === Foo);

