import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/features/todo/application/state/todo_state.dart';
import 'package:testapp/features/todo/presentation/bloc/bloc/todo_bloc.dart';
import 'package:testapp/features/todo/presentation/bloc/event/todo_event.dart';
import 'package:testapp/features/todo/presentation/widgets/todo_list_widget.dart';

import '../../../../configuration.dart';

class TodoPage extends StatelessWidget {
  TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        if (TodoState is TodoLoading) {
          return Center(child: CircularProgressIndicator());
        }

        if (state is TodoLoaded) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Todo List'),
            ),
            body: Center(
              child: Column(
                children: [
                  Expanded(child: TodoListWidget(todos: state.todos)),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: titleController,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () async {
                          context
                              .read<TodoBloc>()
                              .add(AddTodoEvent(sl(), titleController.text));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }

        return Container();
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoPage(),
    );
  }
}
