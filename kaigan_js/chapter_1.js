var cody = new Object();
cody.living = true;
cody.age = 33;
cody.gender = 'male'
cody.getGender = function() {
    return cody.gender;
};

var Person = function(age, living, gender) {
    this.living = living;
    this.age = age;
    this.gender = gender;
    this.getGender = function() { return this.gender };
};

var cody = new Person(true, 33, 'male')

var myUndefined = undefined;
var myFunction = new Function('x', 'y', 'return x * y' );

console.log(typeof myUndefined, typeof myFunction)

var CustomConstructor = function CustomConstructor() {
    return 'wow!';
};
var instanceOfCustomObject = new CustomConstructor();
console.log(instanceOfCustomObject.constructor);

var myBoolean = new Boolean(true);
myBoolean.prop = "wow";
console.log(myBoolean.prop);