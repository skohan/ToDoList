
import 'todo_model.dart';

// The state which gonna return from bloc to ui

class TodoState{

  TodoModel todoModel;
  final List<String> initial = [];
  TodoState({this.todoModel});

  factory TodoState.initial() => TodoState(todoModel: TodoModel(todos: List<String>()));
}