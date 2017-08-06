let human = {};

Object.defineProperties(human, {

  //define data prop
  _name: {
    value: 'shin',
    writable: true,
  },

  //accessor prop
  name: {
    get: function() {
      return this._name;
    },
    set: function(val) {
      this._name = val;
    },
    enumerable: true,
    configurable: true
  }
});

for (let prop in human) {
  console.log(prop); //name
}

console.log(human.name); //shin


