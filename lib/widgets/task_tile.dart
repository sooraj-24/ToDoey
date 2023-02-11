import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  final String taskTile;
  final void Function(bool?) toggleCheckbox;
  final void Function()? longPressCallback;

  TaskTile({required this.isChecked,required this.taskTile,required this.toggleCheckbox,required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckbox,
      ),
      onLongPress: longPressCallback,
    );
  }
}

