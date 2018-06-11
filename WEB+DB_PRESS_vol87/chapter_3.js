//es5
var add = function(a, b) {
  return a + b;
};
//es6
var add = (a, b) => {
  return a + b;
};
var add = (a, b) => a + b;
var square = n => n * n;

//es5
var john = {
  name: "john",
  helloLater: function() {
    var self = this;
    setTimeout(function() {
      console.log("Hello I'm " + self.name);
    }, 1000);
  }
}
john.helloLater();

//es6
var john = {
  name: "john",
  helloLater: function() {
    setTimeout(() => {
      console.log("Hello I'm " + this.name);
    }, 1000);
  }
}

//es5
function Person(name) {
  this.name = name;
}
Person.prototype.greet = function() {
  console.log("Hello I'm " + this.name);
};
Person.create = function(name) {
  return new Person(name);
}

class Person {
  constructor(name) {
    this.name = name;
  }

  greet() {
    console.log("Hello I'm " + this.name);
  }

  static create(name) {
    return new Person(name);
  }
}
var bob = new Person("Bob");
bob.greet();
var john = Person.create("john");