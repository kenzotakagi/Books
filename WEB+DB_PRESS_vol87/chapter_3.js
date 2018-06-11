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

//es5
var foo = 0, bar = 1;
var obj = { foo: foo, bar: bar };
console.log(obj.foo, obj.bar);

//es6
var obj = { foo, bar }
console.log(obj.foo, obj.bar);

//es6
class Author extends Person {
  constructor(name, book) {
    super(name);
    this.book = book;
  }

  greet() {
    super.greet();
    console.log("I wrote " + this.book);
  }

  static create(name, book) {
    return new Author(name, book);
  }
}

var author = new Author("kenzo", "my first kiss");
author.greet();

var key = "foo";
//es5
var obj = {};
obj[key] = 0;
obj[key + "_bar"] = 1
//es6
var obj = {
  [key] = 0;
  [key + "_bar"] = 1;
};
console.log(obj.foo, obj.foo_bar);

//es5
var counter = {
  count: 0;
  increment: function {
    this.count++;
  }
};

//es6
var counter = {
  count: 0;
  increment() {
    this.count++;
  }
};

//es5/miss
for (var i = 0; i < 5; i++) {
  setTimeout(function() {console.log(i)}, i * 100);
}
//es5
for (var i = 0; i < 5; i++) {
  (function(x) {
    setTimeout(function() {console.log(x)}, x * 100)
  })(i);
}

//es6
for (let i = 0; i < 5; i++) {
  setTimeout(function() {console.log(i)}, i * 100);
}

//es6
function foo(first, second, ...rest) {
  console.log("first: ", first);
  console.log("second: ", second);
  console.log("rest: ", rest);
}
foo(1,2,3,4,5)

hoge = [1,2,3]
console.log(Math.max.apply(null, hoge))
console.log(Math.max(...hoge))

var regexp = /(\d{4})(\d{2})(\d{2})/
var date = regexp.exec('20151231');
console.log(date);

var arr = ["foo", "bar"]
var iterator = arr[Symbol.iterator]();
iterator.next();
