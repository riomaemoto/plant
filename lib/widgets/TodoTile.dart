import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  TodoTile({
    required this.isChecked,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: null,
      ),
    );
  }
}
