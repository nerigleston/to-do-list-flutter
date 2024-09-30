import 'package:flutter/material.dart';
import '../models/task_model.dart';

class TaskItemWidget extends StatelessWidget {
  final Task task;
  final ValueChanged<bool?> onChanged;

  TaskItemWidget({required this.task, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(task.title),
      value: task.isCompleted,
      onChanged: onChanged,
    );
  }
}
