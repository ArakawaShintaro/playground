import { createStore } from 'redux';

//createStoreの引数はReducer
let store = createStore(function() {
  return 'Hello redux';
});

var contents = document.getElementById('contents');
contents.innerHTML = store.getState().toString();
