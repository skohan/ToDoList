import 'package:flutter/material.dart';
import 'ui/home.dart' as h;

void main(){
  runApp(
    MaterialApp(
      home: new h.Home(),
    )
  );
}

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {

//   List<String> todoList;
//   TextEditingController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = new TextEditingController();
//     todoList = new List();
//   } 

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   Future addToDo(){
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text("What is your todo?"),
//           content: TextFormField(
//             controller: this.controller ,
//             decoration: InputDecoration(
//             ),
//           ),
//           actions: <Widget>[
//             FlatButton(onPressed: (){ Navigator.of(context).pop();  }, child: Text("Cancel")),
//             FlatButton(onPressed: (){ 
//               todoList.add(controller.text);  
//               controller.text = ""; 
//               setState(() {});
//               Navigator.of(context).pop();  
//             }, 
//             child: Text("Add!")),
//           ],
//         );
//       },
//     );
//   }

//   void deleteToDo(int index){
//     todoList.removeAt(index);
//     setState(() {});
//   }

//   void updateToDo(int index) async{
//     controller.text = todoList[index];
//     await showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text("What is your todo?"),
//           content: TextFormField(
//             controller: this.controller ,
//             decoration: InputDecoration(
//             ),
//           ),
//           actions: <Widget>[
//             FlatButton(onPressed: (){  Navigator.of(context).pop();print("object");  return;
//       }, child: Text("Cancel")),
//             FlatButton(onPressed: (){ 
//               todoList[index] = controller.text;   
//               setState(() {});
//               controller.text = ""; 
//               Navigator.of(context).pop();  
//             }, 
//             child: Text("Update!")),
//           ],
//         );
//       },
//     );

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: new AppBar(
//           title: Text("Your todo!"),
//           centerTitle: true,
//         ),
//           body: SafeArea(
//             child: ListView.builder(
//               itemCount: todoList.length,
//               itemBuilder: (contex,index){
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: MyTile(
//                   index,
//                   title:todoList[index], 
//                   delete: deleteToDo,  
//                   update: updateToDo,
//                 ),
//               );
//             }),
//           ),

//           floatingActionButton: FloatingActionButton(
//             onPressed: addToDo,
//             child: Icon(Icons.add),
//           )
//     );
//   }
// } 