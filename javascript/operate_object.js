let human = {
  name: "shin"
};

console.log(Object.isFrozen(human)); //false

humane.name = "arakawa";
console.log(humane.name); //arakawa

//freeze human object
Object.freeze(human);

human.name = "arashin";
console.log(human.name); //arakawa

/*
  Strictモードを使用していれば、拡張の禁止と封印扱いになる
  拡張の禁止...Object.preventExtensions() 追加ができなくなる
  保護...Object.seal() 追加、削除、属性変更ができない
*/
