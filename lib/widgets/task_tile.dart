import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallback,
    this.onLongPressCallback,
  });

  final String taskTitle;
  final bool isChecked;
  final Function(bool) checkboxCallback;
  final Function()? onLongPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {
          checkboxCallback(value!);
        },
      ),
      onLongPress: onLongPressCallback,
    );
  }
}
