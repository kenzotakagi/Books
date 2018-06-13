let data_ary = ["one", "two", "three"];
let data_str = "あいうえお"
let data_map = new Map([["Mon", "月曜"], ["Tue", "火曜"], ["Wed", "水曜"]])

for(let d of data_ary) {
  console.log(d)
}

for(let d of data_str) {
  console.log(d)
}

for(let [key, value] of data_map) {
  console.log(`${key} : ${value}`);
}

let itr = data_ary[Symbol.iterator]();
let d;
while(d = itr.next()) {
  if (d.done) { break; }
  console.log(d.done);
  console.log(d.value);
}

const privateNames = new WeakMap();
class Foo {
  constructor(name) {
    privateNames.set(this, name)
  }
  getName() {
    return privateNames.get(this);
  }
}

var sym1 = Symbol();
console.log(typeof sym1);
var sym2 = Symbol("foo");
sym2.toString();

var obj = {[sym2]: 1}
Object.keys(obj);
Object.getOwnPropertySymbols(obj);
