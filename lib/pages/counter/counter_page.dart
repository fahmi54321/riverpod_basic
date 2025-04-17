import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/counter/counter_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterNotifierProvider(10));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 20.0),
            OutlinedButton(
                onPressed: () {
                  ref.read(counterNotifierProvider(10).notifier).increment();
                },
                child: Text(
                  'Increment',
                  style: Theme.of(context).textTheme.titleLarge,
                )),
          ],
        ),
      ),
    );
  }
}
