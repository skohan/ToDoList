
import 'todo_model.dart';

// The state which gonna return from bloc to ui

class TodoState {

  TodoModel todoModel;
  TodoState({this.todoModel});

  factory TodoState.initial() => new TodoState(todoModel: new TodoModel());
}