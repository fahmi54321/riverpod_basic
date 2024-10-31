import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/users/users_providers.dart';

class FamilyDisposePage extends ConsumerWidget {
  const FamilyDisposePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // todo 3 provider watch
    ref.watch(userDetailProvider(1));
    ref.watch(userDetailProvider(2));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Dispose'),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          shrinkWrap: true,
          children: [
            OutlinedButton(
              onPressed: () {
                // todo 4 dispose menggunakan invalidate

                // ref.invalidate(userDetailProvider); // dispose semua provider user detail

                ref.invalidate(
                  userDetailProvider(
                    1,
                  ),
                ); // dispose provider user detail id 1
              },
              child: Text(
                'invalidate',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 20.0),
            OutlinedButton(
              onPressed: () {
                // todo 5 dispose menggunakan refresh (finish)

                return ref.refresh(
                  userDetailProvider(
                    1,
                  ),
                ); // dispose provider user detail id 1
              },
              child: Text(
                'refresh',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
