import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/models/users.dart';
import 'package:provider/providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'users_providers.g.dart';

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

@riverpod
FutureOr<User> userDetail(Ref ref, int id) async {
  ref.onDispose(() {
    log('userDetailProvider disposed');
  });

  final response = await ref.watch(dioProvider).get('/users/$id');

  final user = User.fromJson(response.data);

  return user;
}
