var sayHi = function(f) {
  f();
};

sayHi(function(){console.log('hi');});

(function(msg) {
  console.log(msg);
})('hi');
