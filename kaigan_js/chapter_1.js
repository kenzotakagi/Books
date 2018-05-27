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