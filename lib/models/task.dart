class Task {
  String tasktitle;
  bool ischeck;

  Task({required this.tasktitle, required this.ischeck});

  void toggleDone() {
    ischeck = !ischeck;
  }
}
