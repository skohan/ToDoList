import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {

  String title = "Undecided";
  VoidCallback delete;
  VoidCallback update;

  MyTile({this.title, this.delete,this.update});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            blurRadius: 5,
            color: Colors.grey
          )],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: ListTile(
          title: Text(title),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: delete
          ),
          leading: IconButton(
            icon: Icon(Icons.edit),
            onPressed: update
          ),
        ),
      ),
    );
  }
}