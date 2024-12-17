import 'package:testapp/features/todo/application/usecases/add_todo.dart';
import 'package:testapp/features/todo/domain/entities/Todo.dart';

abstract class TodoEvent {}

class AddTodoEvent extends TodoEvent {
  final AddTodo addTodo;
  final String title;
  AddTodoEvent(
    this.addTodo,
    this.title,
  );
}

class GetTodosEvent extends TodoEvent {}
