
abstract class TodoEvents{}

// Self explainatory lol

class AddTodo extends TodoEvents{
  final String todo;
  AddTodo({this.todo});
}

class RemoveTodo extends TodoEvents{
  final int index;
  RemoveTodo({this.index});
}

class UpdateTodo extends TodoEvents{
  final int index;
  final String newTodo;
  UpdateTodo({this.index,this.newTodo});
}