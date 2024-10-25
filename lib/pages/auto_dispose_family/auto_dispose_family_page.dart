import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/auto_dispose_family/auto_dispose_family_provider.dart';

class AutoDisposeFamilyPage extends ConsumerWidget {
  const AutoDisposeFamilyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloFahmi = ref.watch(autoDisposeFamilyHelloProvider('Fahmi'));
    final helloAbdul = ref.watch(autoDisposeFamilyHelloProvider('Abdul'));

    // todo 3 implement count provider (finish)
    ref.watch(counterProvider(Counter(count: 0)));
    ref.watch(counterProvider(Counter(count: 0)));
    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoDisposeFamilyProvider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello $helloFahmi',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 10.0),
            Text(
              'Hello $helloAbdul',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
