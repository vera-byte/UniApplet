import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'uni_applet_method_channel.dart';

abstract class UnimpPlatform extends PlatformInterface {
  /// Constructs a UnimpPlatform.
  UnimpPlatform() : super(token: _token);

  static final Object _token = Object();

  static UnimpPlatform _instance = MethodChannelUnimp();

  /// The default instance of [UnimpPlatform] to use.
  ///
  /// Defaults to [MethodChannelUnimp].
  static UnimpPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [UnimpPlatform] when
  /// they register themselves.
  static set instance(UnimpPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> initUniMp() {
    throw UnimplementedError('initUniMp() has not been implemented.');
  }

  Future<String?> openUniMp(String appID,
      {String? path, Map<String, dynamic>? extraData}) {
    throw UnimplementedError('openUniMP() has not been implemented.');
  }
}
