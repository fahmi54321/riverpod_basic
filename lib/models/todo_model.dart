import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

// todo 1 buat part freezed dengan mengetik 'ptf'
part 'todo_model.freezed.dart';

// todo 2 buat objek uuid
Uuid uuid = Uuid();

// todo 3 buat freezed model dengan mengetik fdataclass
@freezed
class Todo with _$Todo {
  const factory Todo({
    required String id,
    required String desc,
    @Default(false) bool completed,
  }) = _Todo;

  // todo 4 buat method todo add (next todos_provider)
  factory Todo.add({required String desc}) {
    return Todo(id: uuid.v4(), desc: desc);
  }
}

// notes : jangan lupa jalankan 'flutter pub run build_runner watch -d'
