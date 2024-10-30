import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

// todo 1 buat stateProviderFamily (next family_page.dart)

final familyCounterProvider =
    StateProvider.family<int, int>((ref, initialValue) {
  ref.onDispose(() {
    log('autoDisposeFamilyCounterProvider disposed');
  });
  return initialValue;
});
