import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_list/models/task.dart';

class TasksViewModel extends ChangeNotifier {
  List<Task> _tasksList = [];

  UnmodifiableListView<Task> get tasksList => UnmodifiableListView(_tasksList);

  int get tasksCount => _tasksList.length;

  void addNewTask(Task task) {
    _tasksList.add(task);

    notifyListeners();
  }

  void removeTask(int position) {
    _tasksList.removeAt(position);
    notifyListeners();
  }

  void toggleTask(position) {
    _tasksList[position].toggleTask();
    notifyListeners();
  }
}
