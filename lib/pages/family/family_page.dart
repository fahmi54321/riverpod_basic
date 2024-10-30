import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/family/family_provider.dart';

class FamilyPage extends ConsumerWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // todo 2 buat provider watch
    final incVal = ref.watch(familyCounterProvider(10));
    final decVal = ref.watch(familyCounterProvider(-10));

    return Scaffold(
      appBar: AppBar(
        title: const Text('FamilyStateProvider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$incVal',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(width: 20.0),
                FilledButton(
                  onPressed: () {
                    // todo 3 provider read
                    ref
                        .read(familyCounterProvider(10).notifier)
                        .update((val) => val + 10);
                  },
                  child: Text(
                    'Increment',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$decVal',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(width: 20.0),
                FilledButton(
                  onPressed: () {
                    // todo 4 provider read (next auto_dispose_family_provider.dart)
                    ref
                        .read(familyCounterProvider(-10).notifier)
                        .update((val) => val - 10);
                  },
                  child: Text(
                    'Decrement',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
