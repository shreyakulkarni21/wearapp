import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_workout_method_channel.dart';

abstract class FlutterWorkoutPlatform extends PlatformInterface {
  /// Constructs a FlutterWorkoutPlatform.
  FlutterWorkoutPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterWorkoutPlatform _instance = MethodChannelFlutterWorkout();

  /// The default instance of [FlutterWorkoutPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterWorkout].
  static FlutterWorkoutPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterWorkoutPlatform] when
  /// they register themselves.
  static set instance(FlutterWorkoutPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
