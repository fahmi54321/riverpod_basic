import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/models/users.dart';
import 'package:provider/providers/dio_provider.dart';

// todo 9 buat future provider dengan autoDispose, bisa mengetik 'futureProvider'

final userListProvider = FutureProvider.autoDispose<List<User>>((ref) async {
  ref.onDispose(() {
    log('userListProvider disposed');
  });

  final response = await ref.watch(dioProvider).get('/users');
  final List userList = response.data;
  final users = [for (final user in userList) User.fromJson(user)];
  return users;
});

// todo 10 (next user_list_page.dart)
