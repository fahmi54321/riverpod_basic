import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/ticker/ticker_provider.dart';

class TickerPage extends ConsumerWidget {
  const TickerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // todo 7 provider watch
    final tickerValue = ref.watch(tickerProvider);
    log('$tickerValue');

    String zeroPaddedTwoDigits(double ticks) {
      return ticks.floor().toString().padLeft(2, '0');
    }

    String formatTimer(int tick) {
      final minutes = zeroPaddedTwoDigits((tick / 60) % 60);
      final seconds = zeroPaddedTwoDigits(tick % 60);

      return '$minutes:$seconds';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticker'),
      ),
      body: Center(
        // todo 8 implement stream provider (finish)
        child: tickerValue.when(
          data: (tick) => Text(
            formatTimer(tick),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          error: (err, st) => Text(
            err.toString(),
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}
