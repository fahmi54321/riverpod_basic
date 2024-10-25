import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

// todo 1 buat objek provider dengan auto dispose (next auto_dispose_page.dart)

final autoDisposeHelloProvider = Provider.autoDispose<String>((ref) {
  log('[autoDisposeHelloProvider] created');
  ref.onDispose(() {
    log('[autoDisposeHelloProvider] disposed');
  });
  return 'Hello';
});
