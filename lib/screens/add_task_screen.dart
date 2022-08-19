// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:daily_tasks/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

   AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding:EdgeInsets.all(30) ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize:25,
              color: Colors.teal[400],
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            autofocus:true,
            textAlign: TextAlign.center,
            onChanged:(newText){
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 15),
          TextButton(
            onPressed: (){
              Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle!);
              Navigator.pop(context);
          },
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.pink,
              primary: Colors.white,
            ) ,
          ),
        ],
      ),
    );
  }
}
