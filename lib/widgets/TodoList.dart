import 'package:flutter/material.dart';

import 'TodoTile.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView(
        children: [
          TodoTile(),
          TodoTile(),
          TodoTile(),
        ],
      ),
    );
  }
}
// TodoTile(isChecked: false, title: 'title'),
// TodoTile(isChecked: false, title: 'title'),
// TodoTile(isChecked: false, title: 'title'),
