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

var Person = function() {};
Person.prototype.level = 1;
Person.prototype.rank = 'beginner';
Person.prototype.getStatus = function() {
  return this.level + this.rank;
};
var chuck = new Person;
console.log(chuck.getStatus());

var Person = function(level, rank) {
  if(level !== undefined) { this.level = level; }
  if(rank !== undefined) { this.rank = rank; }
};
Person.prototype.level = 1;
Person.prototype.rank = 'beginner';
Person.prototype.getStatus = function() {
  return this.level + this.rank;
};
var chuck = new Person(10, 'expert');
console.log(chuck.getStatus());

var Person = function() { this.bar = 'bar' };
Person.prototype.foo = 'foo';
var Chef = function() { this.goo = 'goo' };
Chef.prototype = new Person;
var cody = new Chef();
console.log(cody.foo);
console.log(cody.bar);
console.log(cody.goo);
