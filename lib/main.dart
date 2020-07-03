import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(), // Home for the app
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> goals;
  TextEditingController tec;

  @override
  void initState() {
    goals = ["Do gym", "Learn flutter", "Sleep", "Eat healthy"];
    tec = new TextEditingController();
    super.initState();
  }

  void _addGoal(String goal) {
    if (goal.isEmpty) return;
    setState(() {
      goals.add(goal);
    });
  }

  void _delteGoal(int index) {
    setState(() {
      goals.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("GOALS"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data")
            ],
          ),
        ),
        body: Container(
            child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: tec,
                    decoration: InputDecoration(),
                  ),
                ),
                FlatButton(
                  child: Text("Add"),
                  onPressed: () {
                    _addGoal(tec.text);
                  },
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: goals.length,
                itemBuilder: (context, index) {
                  String goal = goals[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1, 2),
                                blurRadius: 10)
                          ]),
                      child: ListTile(
                          // visualDensity: VisualDensity(horizontal: 10),
                          leading: Text("$index"),
                          title: Text("$goal"),
                          trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                _delteGoal(index);
                              })),
                    ),
                  );
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
