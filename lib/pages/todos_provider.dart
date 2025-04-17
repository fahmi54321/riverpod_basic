import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/models/todo_model.dart';

// todo 2 (next todos_page.dart)

class TodosNotifier extends ChangeNotifier {
  List<Todo> todos = [];

  void addTodo({required String desc}) {
    todos.add(
      Todo.add(
        desc: desc,
      ),
    );
    notifyListeners();
  }

  void toggleTodo({required String id}) {
    final todo = todos.firstWhere((todo) => todo.id == id);
    todo.completed = !todo.completed;
    notifyListeners();
  }

  void removeTodo({required String id}) {
    todos.removeWhere((e) => e.id == id);
    notifyListeners();
  }
}

final todosProvider = ChangeNotifierProvider<TodosNotifier>((ref) {
  return TodosNotifier();
});
