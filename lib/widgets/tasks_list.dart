import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/vm/tasks_view_model.dart';
import 'package:todo_list/widgets/task_tile.dart';

class TasksListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksViewModel>(builder: (context, tasksViewModel, child) {
      List<Task> tasksList = tasksViewModel.tasksList;
      return ListView.builder(
        itemBuilder: (context, index) {
          Task task = tasksList[index];
          return TaskTile(
            title: task.name,
            isChecked: task.isDone,
            onCheckedChangeState: (newValue) {
              tasksViewModel.toggleTask(index);
            },
          );
        },
        itemCount: tasksList.length,
      );
    });
  }
}
