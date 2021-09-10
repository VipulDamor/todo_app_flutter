import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoe_app/component/add_task_screen.dart';
import 'package:todoe_app/component/list_screen.dart';
import 'package:todoe_app/models/task_data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: AddTask(),
            ),
          );
        },
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 50,
                        color: Colors.white),
                  ),
                  Text(
                    'Total Task count ${(Provider.of<TaskData>(context).getDataCount())}',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: TaskListWidgit())
          ],
        ),
      ),
    );
  }
}
