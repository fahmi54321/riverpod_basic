import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart'; // todo 1 import riverpod_annotation

// todo 2 buat part dengan mengetik 'riverpodPart'
part 'auto_dispose_provider.g.dart';

// todo 3 , note = state provider support dengan riverpod generator
final autoDisposeCounterProvider = StateProvider.autoDispose<int>((ref) {
  ref.onDispose(() {
    log('autoDisposeCounterProvider dispose');
  });
  return 0;
});

// todo 4 buat provider generator dengan adanya proses watch pada state provider
// note = cara ini tidak direkomendasi, materi selanjutnya akan dijelaskan
@riverpod
String autoDisposeAge(Ref ref) {
  // todo 5, watch state provider
  final age = ref.watch(autoDisposeCounterProvider);
  return 'My age : $age';
}


// todo 6 (next auto_dispose_page.dart)
