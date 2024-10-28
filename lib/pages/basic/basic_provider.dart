import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

// todo 1 buat objek stateProvider dengan mengetik 'stateProvider' (next basic_page.dart)
final counterProvider = StateProvider<int>((ref) {
  ref.onDispose(() {
    log('counterProvider dispose');
  });
  return 0;
});
