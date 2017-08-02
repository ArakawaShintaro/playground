// lib/multier.js
const PI = 3.1415;
//exportでモジュールの外からアクセスできるよう明示的にする
//変数や定数、クラスにも適用できる
export function triangle(base, height) {
  return base * height / 2;
};

//main.js
//モジュールのインポート
import {triangle} from './lib/multier';
console.log(triangle(10,20));
// => 100




// *に関して
export const sqrt = Math.sqrt;
export function square(x) {
    return x * x;
}
export function diag(x, y) {
    return sqrt(square(x) + square(y));
}


import * as lib from 'lib';
console.log(lib.square(11));
console.log(lib.diag(4, 3));




//jsファイル内でモジュールを一つだけ渡す場合、export defaultを使用
//基本的にはexport defaultを使用する

// myFunc.js
export default function() {
  //code..
}

//main.js
import myFunc from 'Myfunc';
myFunc();
