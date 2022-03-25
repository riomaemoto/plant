import 'package:flutter/material.dart';
import 'package:plant/widgets/TodoTile.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView(
        children: [
          TodoTile(isChecked: false, title: 'title'),
          TodoTile(isChecked: false, title: 'title'),
          TodoTile(isChecked: false, title: 'title'),
        ],
      ),
    );
  }
}
