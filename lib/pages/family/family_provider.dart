import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

// todo 1 buat objeck provider family (next family_page.dart)
final familyHelloProvider = Provider.family<String, String>((ref, name) {
  ref.onDispose(() {
    log('familyHelloProvider($name) disposed');
  });
  return 'Hello $name';
});
