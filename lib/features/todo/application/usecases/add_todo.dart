import 'package:testapp/features/todo/domain/entities/Todo.dart';
import 'package:testapp/features/todo/domain/repositories/todo_repository.dart';

class AddTodo {
  final TodoRepository _todoRepository;

  AddTodo(this._todoRepository);

  Future<void> call(Todo todo) async {
    return await _todoRepository.addNewTodo(todo);
  }
}
