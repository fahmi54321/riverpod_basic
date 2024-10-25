import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// todo 1 buat objek provider dengan return string (next basic_page.dart)

final helloProvider = Provider<String>((ref) {
  ref.onDispose(() {
    debugPrint('[helloProvider] disposed');
  });
  return 'Hello';
});

final worldProvider = Provider<String>((ref) {
  ref.onDispose(() {
    debugPrint('[worldProvider] disposed');
  });
  return 'World';
});
