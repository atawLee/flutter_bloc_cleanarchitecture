import 'package:get_it/get_it.dart';
import 'package:testapp/features/todo/application/usecases/add_todo.dart';
import 'package:testapp/features/todo/data/repository/todo_repository_impl.dart';
import 'package:testapp/features/todo/domain/repositories/todo_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<TodoRepository>(() => TodoRepositoryImpl());

  sl.registerFactory<AddTodo>(() => AddTodo(sl()));
}
