import 'package:flutter/material.dart';
import 'package:plant/widgets/check_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CheckTile(),
        CheckTile(),
        CheckTile(),
        CheckTile(),
      ],
    );
  }
}
