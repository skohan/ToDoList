
// A model for data/states to pass

import 'package:flutter/cupertino.dart';

@immutable
class TodoModel{
  List<String> todos;

  TodoModel(){
    todos = new List<String>();
    assert(todos != null);
  }
  void remove(int index){
    this.todos.removeAt(index);
  }

  void add(String todo){
    this.todos.add(todo);
  }

  void update(int index, String newTodo){
    this.todos[index] = newTodo;
  }
}