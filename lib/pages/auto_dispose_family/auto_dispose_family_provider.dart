import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

// todo 5 buat stateProviderFamily auto dispose (next auto_dispose_family_page.dart)
final autoDisposeFamilyProvider =
    StateProvider.autoDispose.family<int, int>((ref, initialValue) {
  ref.onDispose(() {
    log('autoDisposeFamilyProvider disposed');
  });
  return initialValue;
});
