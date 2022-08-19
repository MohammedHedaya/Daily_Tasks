// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

 final bool isChecked;
 final String taskTitle;
 final void Function(bool?) checkboxChange;
 final void Function() listTileDelete;

 TaskTile(
     {required this.isChecked,
       required this.taskTitle,
       required this.checkboxChange,
       required this.listTileDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
      style: TextStyle(
          decoration: isChecked?
          TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkboxChange,
      ),
      onLongPress:listTileDelete ,
    );
  }
}

