//throw
// UserException というオブジェクト型を作成
function UserException (message){
  this.message=message;
  this.name="UserException";
}

// 文字列として使用されるとき（例 : エラーコンソール上）に
// 例外を整形する
UserException.prototype.toString = function (){
  return this.name + ': "' + this.message + '"';
}

// UserException のインスタンスを作成し、それをスローする
throw new UserException("Value too high");


//catch~try~(finnaly~)
try {
  hoge;
} catch(e) {
  console.log(e.message);
  console.log(e.name);
  console.log(e.constructor);
} finally {
  console.log('hoge');
}


//throwではエラーオブジェクトのインスタンスでなくてもおk
try {
  throw 'hoge';
} catch(e) {
  console.log(e); //hoge
  console.log(e.message); //undefined
  console.log(e instanceof Error); //false
}

/*
参考https://developer.mozilla.org/ja/docs/Web/JavaScript/Guide/Exception_Handling_Statements/try...catch_Statement
*/
