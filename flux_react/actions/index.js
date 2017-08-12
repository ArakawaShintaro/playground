//TODOのid管理のための変数
let nextTodoId = 0;

//TODOを追加する
export const addTodo = (text) => {
  return {
    type: 'ADD_TODO',
    id: nextTodoId++,
    text
  };
};

//TODOを完了
export const toggleTodo = (id) => {
  return {
    type: 'TOGGLE_TODO',
    id
  };
};

//TOODをフィルタリングする
