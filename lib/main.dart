import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/screens/home_screen.dart';
import 'package:todo_list/vm/tasks_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksViewModel>(
      create: (_) => TasksViewModel(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
