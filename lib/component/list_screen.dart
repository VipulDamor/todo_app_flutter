import 'package:flutter/material.dart';
import 'package:todoe_app/component/tasklist.dart';

class TaskListWidgit extends StatefulWidget {
  @override
  _TaskListWidgitState createState() => _TaskListWidgitState();
}

class _TaskListWidgitState extends State<TaskListWidgit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0),
        ),
      ),
      child: TaskList(),
    );
  }
}
