import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart'; // todo 20 import riverpod_annotation

// todo 21 buat part dengan mengetik 'riverpodPart' jika extensi riverpod diaktifkan
part 'family_provider.g.dart';

// todo 22 comment code sebelumnya

// final familyHelloProvider = Provider.family<String, String>((ref, name) {
//   ref.onDispose(() {
//     log('familyHelloProvider($name) disposed');
//   });
//   return 'Hello $name';
// });

// todo 23 buat riverpod objek hello dengan anotasi dengan mengetik 'riverpod' lalu pilih yang keepAlive
// keepAlive: true ==> autoDispose = false
// serta ada tambahan parameter 'nama'
@Riverpod(keepAlive: true)
String familyHello(Ref ref, {required String nama}) {
  ref.onDispose(() {
    log('familyHelloProvider($nama) disposed');
  });
  return 'Hello $nama';
}

// todo 24 selalu ingat perintah ini masih jalan 'dart run build_runner watch -d'
// todo 25 (next family_page.dart)
