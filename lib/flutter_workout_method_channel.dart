import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_workout_platform_interface.dart';

/// An implementation of [FlutterWorkoutPlatform] that uses method channels.
class MethodChannelFlutterWorkout extends FlutterWorkoutPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_workout');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
