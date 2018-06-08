function getTriangle(base, height) {
  return base * height / 2;
}
console.log('三角形の面積:' + getTriangle(5, 2));

var getTriangle = function(base, height) {
  return base * height / 2;
}
console.log('三角形の面積:' + getTriangle(5, 2));

function(base, height) {
  return base * height / 2;
}


function arrayWalk(data, f) {
  for (var key in data) {
    f(data[key], key);
  }
}

function showElement(value, key) {
  console.log(key + ':' + value);
}

var ary = [1,2,4,8,16];
arrayWalk(ary, showElement);
