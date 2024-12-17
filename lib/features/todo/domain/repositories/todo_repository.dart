import 'package:testapp/features/todo/domain/entities/Todo.dart';

abstract class TodoRepository {
  Future<List<Todo>> getTodos();
  Future<void> addNewTodo(Todo todo);
  Future<void> updateTodoStatus(Todo todo);
  Future<void> deleteTodo(Todo todos);
}
