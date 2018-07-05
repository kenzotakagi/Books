//クラス
var Member = function() {};
//インスタンス
var mem = new Member();
//コンストラクター
var Member = function(firstName, lastName){
  this.firstName = firstName;
  this.lastName = lastName;
  this.getName = function() {
    return this.lastName + '' + this.firstName;
  }
}
var mem = new Member('kenzo', 'takagi');

var data = 'Global data';
var obj1 = { data: 'obj1 data' };
var obj2 = { data: 'obj2 data' };
function hoge() {
  console.log(this.data);
}
hoge.call(null);
hoge.call(obj1);
hoge.call(obj2);

var Member = function(firstName, lastName) {
  if(!(this instanceof Member)) {
    return new Member(firstName, lastName);
  }
  this.firstName = firstName;
};

var Member = function(firstName, lastName){
  this.firstName = firstName;
  this.lastName = lastName;
  };

Member.prototype.getName = function() {
  return this.lastName + '' + this.firstName;
};

var mem = new Member('takagi', 'kenzo')
console.log(mem.getName());

