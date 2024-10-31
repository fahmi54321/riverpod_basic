import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// todo 1 buat part riverpod dengan mengetik 'riverpodPart'
part 'ticker_provider.g.dart';

// todo 2 buat objek stream provider
// final tickerProvider = StreamProvider<int>((ref) {
//   ref.onDispose(() {
//     log('tickerProvider disposed');
//   });
//   return Stream.periodic(Duration(seconds: 1), (t) => t + 1).take(60);
// });

// todo 3 buat objek stream provider dengan generator
@riverpod
Stream<int> ticker(Ref ref) {
  ref.onDispose(() {
    log('tickerProvider disposed');
  });
  return Stream.periodic(Duration(seconds: 1), (t) => t + 1).take(60);
}

// todo 5 jalankan 'fvm flutter pub run build_runner watch -d'

// todo 6 (next ticker_page.dart)
