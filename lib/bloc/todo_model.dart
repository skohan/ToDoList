
// A model for data/states to pass

import 'package:flutter/cupertino.dart';

@immutable
class TodoModel{
  final List<String> todos = [];


  void remove(int index){
    this.todos.removeAt(index);
  }

  void add(String todo){
    this.todos.add(todo);
    for (var item in this.todos) {
      print(item);
    }
  }

  void update(int index, String newTodo){
    this.todos[index] = newTodo;
  }
}