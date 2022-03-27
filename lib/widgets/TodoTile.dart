import 'package:flutter/material.dart';

class TodoTile extends StatefulWidget {
  const TodoTile({Key? key}) : super(key: key);

  @override
  _TodoTileState createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "this is a task",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue) {
          isChecked = newValue!;
          setState(() {});
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool value;
  TaskCheckbox({required this.value});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: false,
      onChanged: (newValue) {
        print(newValue);
      },
    );
  }
}
