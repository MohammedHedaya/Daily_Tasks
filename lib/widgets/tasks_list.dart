// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:daily_tasks/models/task_data.dart';

class TasksList extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder:(context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context , index){
            return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name,
                checkboxChange : (newValue){
                  taskData.updataTask(taskData.tasks[index]);
                },
            listTileDelete:(){
                  taskData.deleteTask(taskData.tasks[index]);
            },);
          },
        );
      },
    );
  }
}

