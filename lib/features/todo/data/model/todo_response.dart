// data/models/todo_model.dart
import 'package:testapp/features/todo/domain/entities/Todo.dart';

class TodoModel {
  final int id;
  final String title;
  final bool isCompleted;

  TodoModel({
    required this.id,
    required this.title,
    this.isCompleted = false,
  });

  // JSON → TodoModel
  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
      id: json['id'],
      title: json['title'],
      isCompleted: json['isCompleted'] ?? false,
    );
  }

  // TodoModel → JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'isCompleted': isCompleted,
    };
  }

  // TodoModel → Domain Entity
  Todo toEntity() {
    return Todo(
      id: id,
      title: title,
      isCompleted: isCompleted,
    );
  }
}
