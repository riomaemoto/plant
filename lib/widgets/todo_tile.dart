import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final void Function(bool?) onPush;
  TodoTile({
    required this.isChecked,
    required this.title,
    required this.onPush,
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
        onChanged: onPush,
      ),
    );
  }
}

// class MyCheckBox extends StatelessWidget {
//   final bool hasCheck;
//   void Function(bool?) changeFunc;
//
//   MyCheckBox({
//     required this.hasCheck,
//     required this.changeFunc,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: hasCheck,
//       onChanged: changeFunc,
//     );
//   }
// }
