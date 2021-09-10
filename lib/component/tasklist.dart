import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoe_app/models/task.dart';
import 'package:todoe_app/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        padding: EdgeInsets.all(20.0),
        itemBuilder: (context, index) {
          Task task = taskData.getTasks()[index];
          return ListTile(
            title: Text(
              task.tasktitle,
              style: TextStyle(
                  color: Colors.black,
                  decoration: task.ischeck ? TextDecoration.lineThrough : null),
            ),
            onLongPress: () {
              taskData.deleteTask(index);
            },
            trailing: Checkbox(
              onChanged: (bool? value) {
                taskData.updateTask(task);
              },
              value: task.ischeck,
            ),
          );
        },
        itemCount: taskData.getDataCount(),
      );
    });
  }
}
