import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final Function onCheckedChangeState;
  bool isChecked = false;
  final String title;

  TaskTile({this.title, this.isChecked, this.onCheckedChangeState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: (value) {
          onCheckedChangeState(value);
        },
        value: isChecked,
      ),
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
    );
  }
}
