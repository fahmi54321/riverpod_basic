import 'package:flutter_riverpod/flutter_riverpod.dart';

// todo 1 (finish)
class CounterNotifier extends AutoDisposeNotifier<int> {
  @override
  int build() {
    ref.onDispose(() {
      print('[counterProvider] disposed');
    });
    return 0;
  }

  void increment() {
    state++;
  }
}

final counterProvider = NotifierProvider.autoDispose<CounterNotifier, int>(() {
  return CounterNotifier();
});
