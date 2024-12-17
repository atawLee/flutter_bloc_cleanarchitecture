import 'package:flutter/material.dart';

import '../../domain/entities/Todo.dart';

class TodoListWidget extends StatelessWidget {
  final List<Todo> todos;

  TodoListWidget({required this.todos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(todos[index].title),
          leading: Icon(Icons.check_box_outline_blank),
          trailing: Icon(Icons.delete),
          onTap: () {
            // Handle tap event
          },
        );
      },
    );
  }
}
