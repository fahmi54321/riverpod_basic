// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:uuid/uuid.dart';

// todo 1 (next todos_provider.dart)
Uuid uuid = Uuid();

class Todo {
  String id;
  String desc;
  bool completed;
  Todo({
    required this.id,
    required this.desc,
    this.completed = false,
  });

  factory Todo.add({
    required String desc,
  }) {
    return Todo(
      id: uuid.v4(),
      desc: desc,
    );
  }

  @override
  String toString() => 'Todo(id: $id, desc: $desc, completed: $completed)';
}
