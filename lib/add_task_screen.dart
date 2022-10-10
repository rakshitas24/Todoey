// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'task.dart';
import 'task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                  ),
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText){
                    newTaskTitle = newText;
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent), 
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                  ),
                  onPressed: (() {
                    Provider.of<TaskData>(context).addTask(newTaskTitle);
                    Navigator.pop(context);
                }),
                ),
              ],
            ),
      ),
    );
  }
}
