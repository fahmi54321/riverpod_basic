import 'package:provider/model/activity.dart';
import 'package:provider/pages/enum_activity/enum_activity_state.dart';
import 'package:provider/providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'enum_activity_provider.g.dart';

@riverpod
class EnumActivity extends _$EnumActivity {
  @override
  EnumActivityState build() {
    ref.onDispose(() {
      print("[EnumActivity disposed]");
    });
    return EnumActivityState.initial();
  }

  Future<void> getActivity(String activityType) async {
    state = state.copyWith(status: ActivityStatus.loading);
    try {
      final response = await ref.read(dioProvider).get(
        'activity',
        queryParameters: {
          'type': activityType,
        },
      );
      final activity = Activity.fromJson(response.data);
      state = state.copyWith(
        status: ActivityStatus.success,
        activity: activity,
      );
    } catch (e) {
      state = state.copyWith(
        status: ActivityStatus.failure,
        error: e.toString(),
      );
    }
  }
}
