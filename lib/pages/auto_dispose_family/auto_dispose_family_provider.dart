// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart'; // todo 29 import riverpod_annotation

// todo 30 buat part dengan mengetik 'riverpodPart' jika extensi riverpod diaktifkan
part 'auto_dispose_family_provider.g.dart';

class Counter extends Equatable {
  final int count;
  Counter({
    required this.count,
  });

  @override
  String toString() => 'Counter(count: $count)';

  @override
  List<Object> get props => [count];
}

// todo 31 comment code sebelumnya

// final counterProvider = Provider.autoDispose.family<int, Counter>(
//   (ref, c) {
//     ref.onDispose(() {
//       log('counterProvider($c) disposed');
//     });
//     return c.count;
//   },
// );
// final autoDisposeFamilyHelloProvider =
//     Provider.autoDispose.family<String, String>((ref, name) {
//   ref.onDispose(() {
//     log('autoDisposeFamilyHelloProvider($name) disposed');
//   });
//   return 'Hello $name';
// });

// todo 32 buat riverpod objek counter dan autoDisposeFamilyHello dengan mengetik 'riverpod' lalu pilih yang riverpod
// @riverpod = Riverpod({bool keepALive = false, List<Object> ? dependencies})
// keepALive = false berarti autoDispose = true
// note = penamaan kalau bisa tidak ada provider dibelakangnya
//        counterProvider = wrong
//        counter = correct

@riverpod
int counter(Ref ref, Counter c) {
  ref.onDispose(() {
    log('counterProvider($c) disposed');
  });
  return c.count;
}

@riverpod
autoDisposeFamilyHello(Ref ref, String nama) {
  ref.onDispose(() {
    log('autoDisposeFamilyHelloProvider($nama) disposed');
  });
  return 'Hello $nama';
}

// todo 33 run app (finish)
