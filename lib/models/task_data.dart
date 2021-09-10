import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:todoe_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(tasktitle: "buy some goods", ischeck: false),
    Task(tasktitle: "Learn Flutter", ischeck: false),
  ];

  UnmodifiableListView<Task> getTasks() {
    return UnmodifiableListView(_task);
  }

  addTask(String title) {
    var task = Task(tasktitle: title, ischeck: false);
    _task.add(task);
    notifyListeners();
  }

  deleteTask(int position) {
    _task.removeAt(position);
    notifyListeners();
  }

  updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  int getDataCount() {
    return _task.length;
  }
}
