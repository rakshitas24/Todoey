// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              isChecked: taskData.tasks[index].isDone, 
              taskTitle: taskData.tasks[index].name,
              checkboxCallback : (checkboxState) {
            // setState(() {
            //   taskData.tasks[index].toggleDone();
            // });
          }
    
              );
        },
        itemCount: taskData.taskCount,
      );
      },
    );
  }
}
