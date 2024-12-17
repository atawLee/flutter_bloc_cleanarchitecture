import 'package:testapp/features/todo/domain/entities/Todo.dart';
import 'package:testapp/features/todo/domain/repositories/todo_repository.dart';

abstract class TodoState {}

class TodoLoaded extends TodoState {
  final List<Todo> todos;
  TodoLoaded({
    required this.todos,
  });
}

class TodoLoading extends TodoState {}
