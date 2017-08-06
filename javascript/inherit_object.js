let Phone = {
  name: 'name',
  call: function() {
    console.log(`...{$this.name} is Calling`);
  }
};

let Phone2 = Object.create(Phone);
Phone2.call(); //...my phone is Calling

let SmartPhone = Object.create(Phone, {
  name: {
    value: 'SmartPhone',
    writable: true,
    configurable: true,
    enumerable: true
  },
  type: {
    value: 'iOS',
    writable: true,
    configurable: true,
    enumerable: true
  }
});

console.log(SmartPhone.type) //iOS
SmartPhone.call(); //...SmartPhone is Calling



//プロトタイプチェーンをもたないObject（ハッシュテーブルなどに有用）

let nakedObj = Object.create(null);
console.log('toString' in namedObj); //false
