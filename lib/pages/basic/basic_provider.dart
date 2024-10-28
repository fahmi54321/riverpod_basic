import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart'; // todo 1 import riverpod_annotation

// todo 2 buat part dengan mengetik 'riverpodPart'
part 'basic_provider.g.dart';

// todo 3 , note = state provider support dengan riverpod generator
final counterProvider = StateProvider<int>((ref) {
  ref.onDispose(() {
    log('counterProvider dispose');
  });
  return 0;
});

// todo 4 buat provider generator dengan adanya proses watch pada state provider
// note = cara ini tidak direkomendasi, materi selanjutnya akan dijelaskan
@Riverpod(keepAlive: true)
String age(Ref ref) {
  // todo 5, watch state provider
  final age = ref.watch(counterProvider);
  return 'My age : $age';
}

// todo 6 (next basic_page.dart)
