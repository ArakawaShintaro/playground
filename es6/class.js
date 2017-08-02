
let title = 'SPA application';
let price = 3000;
let publich = 'ArakawaShintarto';

let book = { title, price, publish };
//結果：{" title":" SPA application"," price": 3000," publish":" ArakawaShintaro"}




let book = {
  let title = 'SPA application';
  let price = 3000;
  let publich = 'ArakawaShintarto';

  toString() {
    console.log(`${this.title}:${this.price}円`);
  }
};
book.toString();


//クラス
class Person {
  constructor(name,sex) {
    this.name = name;
    this.sex = sex;
  }

  get age() {
    return this._age;
  }

  set age(value) {
    this._age = value;
  }

  static bark() {
    return "私は人田です";
  }

  show() {
    return `${this.name}は${this.sex}, ${this.age}です`;
  }
}

let person = new Person('Shin', '男');
p.age = 20; //getter setter インスタンスフィールドはない
console.log(person.show());
console.log(Person.bark());

//extendsで継承可能
