import 'package:testapp/features/todo/domain/entities/Todo.dart';
import 'package:testapp/features/todo/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  List<Todo> todos = [
    Todo(
      id: 1,
      title: 'Todo 1',
      isCompleted: false,
    ),
    Todo(
      id: 2,
      title: 'Todo 2',
      isCompleted: true,
    ),
    Todo(
      id: 3,
      title: 'Todo 3',
      isCompleted: false,
    ),
  ];
  @override
  Future<void> addNewTodo(Todo todo) {
    todos.add(todo);
    return Future.value();
  }

  @override
  Future<void> deleteTodo(Todo todo) {
    todos.remove(todo);
    return Future.value();
  }

  @override
  Future<List<Todo>> getTodos() {
    return Future.value(todos);
  }

  @override
  Future<void> updateTodoStatus(Todo todo) {
    //sample
    final index = todos.indexWhere((element) => element.id == todo.id);
    todos[index] = todo;
    return Future.value();
  }
}
