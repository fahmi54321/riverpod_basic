import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/models/todo_model.dart';

// todo 5 buat class state notifier dengan mengetik 'stateNotifier' beserta method
class TodosNotifier extends StateNotifier<List<Todo>> {
  TodosNotifier() : super([]);

  void addTodo({
    required String desc,
  }) {
    state = [...state, Todo.add(desc: desc)];

    // not working
    // state.add(Todo.add(desc: desc));
  }

  void toggleTodo({required String id}) {
    state = [
      for (final todo in state)
        if (todo.id == id) todo.copyWith(completed: !todo.completed) else todo
    ];
  }

  void removeTodo({required String id}) {
    state = [
      for (final todo in state)
        if (todo.id != id) todo
    ];
  }
}

// todo 6 buat objek state notifier provider dengan auto dispose
final todosProvider =
    StateNotifierProvider.autoDispose<TodosNotifier, List<Todo>>((ref) {
  return TodosNotifier();
});
