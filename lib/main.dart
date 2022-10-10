import 'package:flutter/material.dart';
import 'package:todoey/task_data.dart';
import 'tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(TodoeyApp());
}

class TodoeyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}