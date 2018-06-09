 import $ from "jquery";

class counter {
  constructor(selector = "button") {
    this.count = 0;
    var elements = document.querySelectorAll(selector);
    for (let el of elements) {
      $(el).on("click", () => this.count++);
    }
  }
  output() {
    console.log(`count: ${this.count}`);
  }
}

export default Counter;
