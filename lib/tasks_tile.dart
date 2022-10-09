// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

   bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkboxState : isChecked,
        toggleCheckBoxState : (checkboxState) {
          setState(() {
            isChecked = checkboxState;
          });
        }
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget{

 final bool checkboxState;
 final void Function(dynamic) toggleCheckBoxState;

 TaskCheckBox({required this.checkboxState, required this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckBoxState,
    );
  }
}