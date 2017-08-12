import { createStore } from 'redux';
import { addTodo, toggleTodo, setVisibilityFilter } from './actions/index.js';

//createStoreの引数はReducer
let store = createStore(function() {
  return 'Hello redux';
});

//TODOの追加
var addTodoElem = document.getElementById('addTodo');
console.log(addTodoElem);
var input = addTodoElem.getElementsByTagName('input')[0];
console.log(input);
var button = addTodoElem.getElementByTagName('button')[0];

button.addEventListener('click', () => {
  //Storeにアクションを渡す
  var todoText = input.value;
  store.dispatch(addTodo(todoText));
});

//TOODの完了
var todoList = document.getElementById('todoList');
var elements = todoList.getElementByTagName('li');
console.log(elements);
var listArray = [...elements];
console.log(listArray);

listArray.forEach((v, index) => {
  v.addEventListener('click', e => {
    store.dispatch(toggleTodo(index));
  });
});

//フィルタリング
var links = document.getElementById('links');
var childs = links.childrenNodes;
var childList = [...childs];
childList.filter(v => v.nodeName != '#text').forEach(v => {
  v.addEventListener('click', e => {
    var filterText = v.innerHTML;
    store.dispatch(setVisibilityFilter(filterText));
  });
});
