import { combineReducers } from 'redux';

//1つ1つのTODOを処理するための関数（todosから利用）
const todo = (state, action) => {
  switch(action.type) {
    case 'ADD_TODO':
      return {
        id: action.id,
        text: action.text,
        completed: false
      };
    case 'TOGGLE_TODO':
      if (state.id !== action.id) {
        return state;
      }

      return Object.assign({}, state, {
        completed: !state.completed
      });
    default:
      return state;
  }
}

//複数のTODOを処理するための関数
const todos = (state = [], action) => {
  switch(action.type)
}
