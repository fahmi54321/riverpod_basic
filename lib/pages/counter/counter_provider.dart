import 'package:flutter_riverpod/flutter_riverpod.dart';

// todo 1 (next counter_provider.dart)
class CounterNotifier extends Notifier<int> {
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

final counterProvider = NotifierProvider<CounterNotifier, int>(() {
  return CounterNotifier();
});
