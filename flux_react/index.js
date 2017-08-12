import { createStore } from 'redux';

//createStoreの引数はReducer
let store = createStore(function() {
  return 'Hello redux';
});

