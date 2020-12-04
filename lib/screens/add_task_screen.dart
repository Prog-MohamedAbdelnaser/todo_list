import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/vm/tasks_view_model.dart';

class AddTaskScreen extends StatelessWidget {
  final Function onAddTaskCallback;
  String taskText;

  AddTaskScreen({this.onAddTaskCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      clipBehavior: Clip.none,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
            Form(
              child: TextFormField(
                onChanged: (value) {
                  taskText = value;
                },
                autofocus: true,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.lightBlueAccent)),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Material(
              elevation: 4,
              color: Colors.lightBlueAccent,
              child: MaterialButton(
                height: 48,
                onPressed: () {
                  onAddTaskCallback(taskText);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
