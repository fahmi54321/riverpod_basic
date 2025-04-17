import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

// todo 1 (finish)

// manual

// class CounterNotifier extends AutoDisposeFamilyNotifier<int, int> {
//   @override
//   int build(int arg) {
//     ref.onDispose(() {
//       print('[counterProvider] disposed');
//     });
//     return arg;
//   }

//   void increment() {
//     state++;
//   }
// }

// final counterProvider =
//     NotifierProvider.family<CounterNotifier, int, int>(CounterNotifier.new);

// generator

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  int build(int initialValue) {
    ref.onDispose(() {
      print('[counterProvider] disposed');
    });
    return initialValue;
  }

  void increment() {
    state++;
  }
}
