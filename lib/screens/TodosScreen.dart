import 'package:flutter/material.dart';
import 'package:plant/widgets/HeaderWidget.dart';
import 'package:plant/widgets/TodoList.dart';
// import 'package:plant/widgets/todo_list.dart';

class TodosScreen extends StatefulWidget {
  TodosScreen({Key? key}) : super(key: key);

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          // showModalBottomSheet(
          //     context: context, builder: (_) => AddTaskScreen());
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: TodoList(),
            ),
          ),
        ],
      ),
    );
  }
}
