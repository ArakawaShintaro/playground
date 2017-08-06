let Phone = {
  name: 'name',
  call: function() {
    console.log(`...{$this.name} is Calling`);
  }
};

let Phone2 = Object.create(Phone);
Phone2.call(); //...my phone is Calling

