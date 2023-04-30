import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_workout/flutter_workout.dart';
import 'package:flutter_workout/flutter_workout_platform_interface.dart';
import 'package:flutter_workout/flutter_workout_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterWorkoutPlatform
    with MockPlatformInterfaceMixin
    implements FlutterWorkoutPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterWorkoutPlatform initialPlatform = FlutterWorkoutPlatform.instance;

  test('$MethodChannelFlutterWorkout is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterWorkout>());
  });

  test('getPlatformVersion', () async {
    FlutterWorkout flutterWorkoutPlugin = FlutterWorkout();
    MockFlutterWorkoutPlatform fakePlatform = MockFlutterWorkoutPlatform();
    FlutterWorkoutPlatform.instance = fakePlatform;

    expect(await flutterWorkoutPlugin.getPlatformVersion(), '42');
  });
}
