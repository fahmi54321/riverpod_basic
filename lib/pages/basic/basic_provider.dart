import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart'; // todo 1 import riverpod_annotation

// todo 2 buat part dengan mengetik 'riverpodPart' jika extensi riverpod diaktifkan
part 'basic_provider.g.dart';

// todo 3 comment code sebelumnya

// final helloProvider = Provider<String>((ref) {
//   ref.onDispose(() {
//     debugPrint('[helloProvider] disposed');
//   });
//   return 'Hello';
// });

// final worldProvider = Provider<String>((ref) {
//   ref.onDispose(() {
//     debugPrint('[worldProvider] disposed');
//   });
//   return 'World';
// });

// todo 5 buat riverpod objek hello dengan anotasi dengan mengetik 'riverpod' lalu pilih yang keepAlive
// keepAlive: true ==> autoDispose = false
@Riverpod(keepAlive: true)
String hello(Ref ref) {
  ref.onDispose(() {
    debugPrint('[helloProvider] disposed');
  });
  return 'Hello';
}

// todo 6 buat riverpod objek world dengan anotasi dengan mengetik 'riverpod' lalu pilih yang keepAlive
// keepAlive: true ==> autoDispose = false

@Riverpod(keepAlive: true)
String world(Ref ref) {
  ref.onDispose(() {
    debugPrint('[worldProvider] disposed');
  });
  return 'World';
}

// todo 7 generate the code ==> 'dart run build_runner build --delete-conflicting-outputs atau singkatnya dart run build_runner build -d


// todo 8 run app 

// todo 9 jalankan 'dart run build_runner watch -d' agar build runner otomatis jika ada perubahan riverpod_annotation

// todo 10 (next auto_dispose_provider.dart)
