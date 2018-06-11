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
