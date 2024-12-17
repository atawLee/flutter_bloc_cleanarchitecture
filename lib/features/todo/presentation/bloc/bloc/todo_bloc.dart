import 'package:bloc/bloc.dart';

import 'package:testapp/features/todo/application/state/todo_state.dart';
import 'package:testapp/features/todo/domain/repositories/todo_repository.dart';
import 'package:testapp/features/todo/presentation/bloc/event/todo_event.dart';

import '../../../domain/entities/Todo.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository todoRepository;

  TodoBloc(
    this.todoRepository,
  ) : super(TodoLoading()) {
    on<AddTodoEvent>((event, emit) async {
      emit(TodoLoading());

      final todo = Todo(id: 0, title: event.title);
      event.addTodo.call(todo);
      var todos = await todoRepository.getTodos();
      emit(TodoLoaded(todos: todos));
    });

    on<GetTodosEvent>((event, emit) async {
      emit(TodoLoading());
      var todos = await todoRepository.getTodos();
      emit(TodoLoaded(todos: todos));
    });

    add(GetTodosEvent());
  }
}
