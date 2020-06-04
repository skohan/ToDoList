

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:todolist/bloc/dialogue_box.dart';
import 'package:todolist/bloc/todo_events.dart';
import 'package:todolist/bloc/todo_state.dart';
import 'dart:async';

class TodoBloc extends Bloc<TodoEvents, TodoState>{
  @override
  TodoState get initialState => TodoState.initial();

  int totalTodos(){
    return state.todoModel.todos.length;
  }

  // String getTodo(int index){
  //   return state.todoModel.todos[index];
  // }
  void addTodo(BuildContext context, String newTodo) async{
    print(newTodo);
    add(AddTodo(todo: newTodo));
  }

  void removeTodo(int index){

    add(RemoveTodo(index: index));
  }

  void updateTodo(BuildContext context,int index, String updatedTodo) async {

    add(UpdateTodo(index: index, newTodo: updatedTodo));
  }

  @override
  Stream<TodoState> mapEventToState(TodoEvents event) async* {
    
    final _currentState = state;

    if(event is AddTodo){
      print(event.todo);
      _currentState.todoModel.add(event.todo);
      yield _currentState;

    }
    if(event is RemoveTodo){
      _currentState.todoModel.remove(event.index);
      yield _currentState;
    }
    if(event is UpdateTodo){
      _currentState.todoModel.update(event.index, event.newTodo);
      yield _currentState;
    }
  }

}