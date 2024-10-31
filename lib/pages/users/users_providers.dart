import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/models/users.dart';
import 'package:provider/providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// todo 9 buat riverpod part untuk kebutuhan riverpod genetator
part 'users_providers.g.dart';

// todo 10 buat future provider list user dengan autoDispose tanpa generator, bisa mengetik 'futureProvider'

// final userListProvider = FutureProvider.autoDispose<List<User>>((ref) async {
//   ref.onDispose(() {
//     log('userListProvider disposed');
//   });

//   final response = await ref.watch(dioProvider).get('/users');
//   final List userList = response.data;
//   final users = [for (final user in userList) User.fromJson(user)];
//   return users;
// });

// todo 11 buat future provider list user dengan autoDispose dengan generator, bisa mengetik 'riverpodFuture'
@riverpod
FutureOr<List<User>> userList(Ref ref) async {
  ref.onDispose(() {
    log('userListProvider disposed');
  });

  final response = await ref.watch(dioProvider).get('/users');
  final List userList = response.data;
  final users = [for (final user in userList) User.fromJson(user)];
  return users;
}

// todo 12 buat future provider detail user dengan autoDispose tanpa generator, bisa mengetik 'futureProvider'

// final userDetailProvider =
//     FutureProvider.autoDispose.family<User, int>((ref, id) async {
//   ref.onDispose(() {
//     log('userDetailProvider disposed');
//   });

//   final response = await ref.watch(dioProvider).get('/users/$id');
//   final user = User.fromJson(response.data);

//   return user;
// });

// todo 13 buat future provider detail user dengan autoDispose dengan generator, bisa mengetik 'riverpodFuture'

@riverpod
FutureOr<User> userDetail(Ref ref, int id) async {
  ref.onDispose(() {
    log('userDetailProvider disposed');
  });

  final response = await ref.watch(dioProvider).get('/users/$id');
  final user = User.fromJson(response.data);

  return user;
}

// notes = jangan lupa jalankan 'fvm flutter pub run build_runner watch -d' untuk generate provider

// todo 14 next (user_list_page.dart)
