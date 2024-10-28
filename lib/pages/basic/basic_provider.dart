import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'basic_provider.g.dart';

final counterProvider = StateProvider<int>((ref) {
  ref.onDispose(() {
    log('counterProvider dispose');
  });
  return 0;
});

@Riverpod(keepAlive: true)
String age(Ref ref) {
  final age = ref.watch(counterProvider);
  return 'My age : $age';
}
