import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/family/family_provider.dart';

class FamilyPage extends ConsumerWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // todo 26 implement provider
    final helloFahmi = ref.watch(familyHelloProvider(nama: 'Fahmi'));
    final helloAbdul = ref.watch(familyHelloProvider(nama: 'Abdul'));
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

// todo 27 (run app)
// todo 28 (next auto_dispose_family_provider.dart)
