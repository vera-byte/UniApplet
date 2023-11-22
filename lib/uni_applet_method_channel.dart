import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'uni_applet_platform_interface.dart';

/// An implementation of [UniAppletPlatform] that uses method channels.
class MethodChannelUniApplet extends UniAppletPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('uni_applet');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
