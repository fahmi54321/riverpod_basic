import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

// todo 3 buat objeck provider family dengan autoDispose (next auto_dispose_family_page.dart)

final autoDisposeFamilyHelloProvider =
    Provider.autoDispose.family<String, String>((ref, name) {
  ref.onDispose(() {
    log('autoDisposeFamilyHelloProvider($name) disposed');
  });
  return 'Hello $name';
});
