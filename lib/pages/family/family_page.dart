import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/family/family_provider.dart';

// todo 2 implement provider family (next auto_dispose_family_provider.dart)

class FamilyPage extends ConsumerWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final helloFahmi = ref.watch(familyHelloProvider('Fahmi'));
    final helloAbdul = ref.watch(familyHelloProvider('Abdul'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('FamilyProvider'),
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
