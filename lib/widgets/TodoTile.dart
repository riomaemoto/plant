import 'package:flutter/material.dart';

class TodoTile extends StatefulWidget {
  @override
  State<TodoTile> createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  // final bool isChecked;
  bool isChecked = false;

  void checkboxCallback(bool checkboxstate) {
    (newValue) {
      setState(() {
        isChecked = checkboxstate;
      });
    };
    // final String title;
    @override
    Widget build(BuildContext context) {
      return ListTile(
        title: Text(
          // title,
          "this is a task",
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: TaskCheckbox(
          checkboxState: isChecked,
          toggleCheckboxState: (bool checkboxState) {
            setState(() {
              isChecked = checkboxstate;
            });
          },
        ),
      );
    }
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool = checkboxState;
  final Function toggleCheckBoxState;

  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      // value: isChecked,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
