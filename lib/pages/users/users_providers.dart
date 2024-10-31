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

  // todo 1 (tarok keepAlive dibawah dioProvider)
  final response = await ref.watch(dioProvider).get('/users/$id');
  ref.keepAlive();
  // todo 2 (run projek, lakukan case dibawah ini)
  /**
   * - buka hal detail dengan ada koneksi berkali2, maka hal detail tsb akan ngecache
   * - hal detail yg sudah ngecache, buka dengan tanpa koneksi dan sambil buka hal detail dengan belum ngecache, pasti ada perbedaan
   * - coba atur koneksi paling lambat, ketika buka hal detail dan tiba2 back halaman, maka hal detail tsb akan dispose
   */

  // todo 3 (tarok keepAlive diatas dioProvider)
  // ref.keepAlive();
  // final response = await ref.watch(dioProvider).get('/users/$id');
  // todo 4 (run projek, lakukan case dibawah ini)
  /**
   * - buka hal detail dengan ada koneksi berkali2, maka hal detail tsb akan ngecache
   * - hal detail yg sudah ngecache, buka dengan tanpa koneksi dan sambil buka hal detail dengan belum ngecache, pasti ada perbedaan
   * - coba atur koneksi paling lambat, ketika buka hal detail dan tiba2 back halaman, maka hal detail tsb tidak dispose, jadi hal tsb tetap nge hit api detail
   */

  // todo 5 (finish)

  final user = User.fromJson(response.data);

  return user;
}
