import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todolist/bloc/apptheme_bloc.dart';
import 'package:todolist/bloc/todo_bloc.dart';
import 'package:todolist/themes/app_themes.dart';
import 'package:todolist/widgets/tile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TodoBloc todoBloc = new TodoBloc();
  TextEditingController tec;
  bool _isThemeSwitch = false;

  @override
  void initState() {
    super.initState();
    tec = new TextEditingController();
  }

  @override
  void dispose() {
    todoBloc.close();
    tec.dispose();
    super.dispose();
  }

  void getTheTextYouFreakingWantFromUserHuh(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("What is your todo?"),
          content: TextFormField(
            controller: tec,
            decoration: InputDecoration(),
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Cancel")),
            FlatButton(
                onPressed: () {
                  index == null
                      ? todoBloc.addTodo(context, tec.text)
                      : todoBloc.updateTodo(context, index, tec.text);
                  Navigator.of(context).pop();
                },
                child: Text("Add!")),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Your todo!"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: BlocBuilder(
            cubit: todoBloc,
            builder: (context, state) => Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Switch(
                    value: _isThemeSwitch,
                    onChanged: (value) {
                      _isThemeSwitch = value;
                      if (_isThemeSwitch) {
                        BlocProvider.of<AppthemeBloc>(context)
                            .add(AppThemeEvent(AppTheme.darkTheme));
                      } else {
                        BlocProvider.of<AppthemeBloc>(context)
                            .add(AppThemeEvent(AppTheme.lightTheme));
                      }
                      setState(() {});
                    },
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.todoModel.todos.length,
                      itemBuilder: (contex, index) {
                        print(state.todoModel.todos.length);
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyTile(
                            title: state.todoModel.todos[index],
                            delete: () {
                              todoBloc.removeTodo(index);
                            },
                            update: () {
                              getTheTextYouFreakingWantFromUserHuh(index);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            getTheTextYouFreakingWantFromUserHuh(null);
          },
          child: Icon(Icons.add),
        ));
  }
}
