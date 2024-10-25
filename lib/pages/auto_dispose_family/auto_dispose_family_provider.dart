// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// todo 1 buat model Counter

class Counter extends Equatable {
  final int count;
  Counter({
    required this.count,
  });

  @override
  String toString() => 'Counter(count: $count)';

  @override
  List<Object> get props => [count];
}

// todo 2 buat objek count provider (next auto_dispose_family_page.dart)
final counterProvider = Provider.autoDispose.family<int, Counter>(
  (ref, c) {
    ref.onDispose(() {
      log('counterProvider($c) disposed');
    });
    return c.count;
  },
);
final autoDisposeFamilyHelloProvider =
    Provider.autoDispose.family<String, String>((ref, name) {
  ref.onDispose(() {
    log('autoDisposeFamilyHelloProvider($name) disposed');
  });
  return 'Hello $name';
});
