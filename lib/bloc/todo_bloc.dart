

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:todolist/bloc/todo_events.dart';
import 'package:todolist/bloc/todo_state.dart';
import 'dart:async';

class TodoBloc extends Bloc<TodoEvents, TodoState>{
  @override
  TodoState get initialState => TodoState.initial();

  void addTodo(BuildContext context, String newTodo) async{
    // print(newTodo);
    this.add(AddTodo(todo: newTodo));
  }

  void removeTodo(int index){

    this.add(RemoveTodo(index: index));
  }

  void updateTodo(BuildContext context,int index, String updatedTodo) async {

    this.add(UpdateTodo(index: index, newTodo: updatedTodo));
  }

  @override
  Stream<TodoState> mapEventToState(TodoEvents event) async* {
    
    final _currentState = state;

    if(event is AddTodo){
      print(event.todo);
      _currentState.todoModel.add(event.todo);
      for(var item in _currentState.todoModel.todos){
        print(item);
      }
      yield new TodoState(todoModel: _currentState.todoModel);

    }
    if(event is RemoveTodo){
      _currentState.todoModel.remove(event.index);
      yield new TodoState(todoModel: _currentState.todoModel);
    }
    if(event is UpdateTodo){
      _currentState.todoModel.update(event.index, event.newTodo);
      yield new TodoState(todoModel: _currentState.todoModel);
    }
  }

}