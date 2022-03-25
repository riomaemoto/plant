import 'package:flutter/material.dart';
import 'package:plant/models/todo.dart';
import 'package:plant/widgets/todo_tile.dart';

class TodoList extends StatefulWidget {
  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todo> todoArr = [
    Todo(title: 'Buy Milk'),
    Todo(title: 'Study Homework'),
    Todo(title: 'Play Tennis'),
  ]; // Array

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, i) {
        return TodoTile(
          isChecked: todoArr[i].isDone,
          title: todoArr[i].title,
          onPush: (value) {
            todoArr[i].toggleDone();
            setState(() {});
          },
        );
      },
      itemCount: todoArr.length,
    );
  }
}
