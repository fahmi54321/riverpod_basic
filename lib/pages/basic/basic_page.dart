import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/basic/basic_provider.dart';

class BasicPage extends ConsumerWidget {
  const BasicPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // todo 2 listen provider
    ref.listen<int>(counterProvider, (previous, next) {
      if (next == 3) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('counter : $next'),
            );
          },
        );
      }
    });

    // todo 3 watch provider
    final value = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('StateProvider'),
      ),
      body: Center(
        child: Text(
          '$value',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // todo 4 read provider (finish)
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
