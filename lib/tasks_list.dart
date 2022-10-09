import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: tasks[index].isDone, 
            taskTitle: tasks[index].name,
            checkboxCallback : (checkboxState) {
          setState(() {
            tasks[index].toggleDone();
          });
        }

            );
      },
      itemCount: tasks.length,
    );
  }
}
