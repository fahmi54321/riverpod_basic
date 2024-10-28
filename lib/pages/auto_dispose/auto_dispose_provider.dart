import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart'; // todo 11 import riverpod_annotation

// todo 12 buat part dengan mengetik 'riverpodPart' jika extensi riverpod diaktifkan
part 'auto_dispose_provider.g.dart';

// todo 13 comment code sebelumnya
// final autoDisposeHelloProvider = Provider.autoDispose<String>((ref) {
//   log('[autoDisposeHelloProvider] created');
//   ref.onDispose(() {
//     log('[autoDisposeHelloProvider] disposed');
//   });
//   return 'Hello';
// });

// todo 14 buat riverpod objek autoDisposeHelloProvider dengan mengetik 'riverpod' lalu pilih yang riverpod
// @riverpod = Riverpod({bool keepALive = false, List<Object> ? dependencies})
// keepALive = false berarti autoDispose = true
// note = penamaan kalau bisa tidak ada provider dibelakangnya
//        autoDisposeHelloProvider = wrong
//        autoDisposeHello = correct

@riverpod
String autoDisposeHello(Ref ref) {
  log('[autoDisposeHelloProvider] created');
  ref.onDispose(() {
    log('[autoDisposeHelloProvider] disposed');
  });
  return 'Hello';
}

// todo 15 selalu ingat perintah ini masih jalan 'dart run build_runner watch -d'
// todo 16 (next auto_dispose_page.dart)
