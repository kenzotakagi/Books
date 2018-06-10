//polifile
String.prototype.includes = function(searchString) {
  var position = arguments.length > 1 ? arguments[1] : 0;
  return this.indexOf(searchString, position) !== -1;
}

"test".includes("es");
