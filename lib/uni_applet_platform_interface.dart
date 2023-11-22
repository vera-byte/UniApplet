import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'uni_applet_method_channel.dart';

abstract class UniAppletPlatform extends PlatformInterface {
  /// Constructs a UniAppletPlatform.
  UniAppletPlatform() : super(token: _token);

  static final Object _token = Object();

  static UniAppletPlatform _instance = MethodChannelUniApplet();

  /// The default instance of [UniAppletPlatform] to use.
  ///
  /// Defaults to [MethodChannelUniApplet].
  static UniAppletPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [UniAppletPlatform] when
  /// they register themselves.
  static set instance(UniAppletPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}