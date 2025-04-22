import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/model/activity.dart';
import 'package:provider/pages/enum_activity/enum_activity_provider.dart';
import 'package:provider/pages/enum_activity/enum_activity_state.dart';

class EnumAktivityPage extends ConsumerStatefulWidget {
  const EnumAktivityPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EnumAktivityPageState();
}

class _EnumAktivityPageState extends ConsumerState<EnumAktivityPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(enumActivityProvider.notifier).getActivity(activityTypes[0]);
    });
  }

  @override
  Widget build(BuildContext context) {
    final activityState = ref.watch(enumActivityProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enum Activity Notifier"),
      ),
      body: switch (activityState.status) {
        ActivityStatus.initial => const Center(
            child: Text(
              'Get some activity',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ActivityStatus.loading => const Center(
            child: CircularProgressIndicator(),
          ),
        ActivityStatus.failure => Center(
            child: Text(
              activityState.error,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ActivityStatus.success => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(activityState.activity.activity),
                Text(activityState.activity.type),
                Text(activityState.activity.participants.toString()),
              ],
            ),
          ),
      },
    );
  }
}
