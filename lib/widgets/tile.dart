import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  String title = "Undecided";
  VoidCallback delete;
  VoidCallback update;

  MyTile({this.title, this.delete, this.update});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)],
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).cardColor,
        ),
        child: ListTile(
          title: Text(title),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: delete,
            color: Theme.of(context).iconTheme.color,
          ),
          leading: IconButton(
            icon: Icon(Icons.edit),
            onPressed: update,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ),
    );
  }
}
