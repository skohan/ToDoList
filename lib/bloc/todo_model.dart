
// A model for data/states to pass


class TodoModel{
  List<String> todos = [];

  TodoModel({this.todos});


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