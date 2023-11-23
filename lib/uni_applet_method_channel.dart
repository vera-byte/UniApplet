import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'uni_applet_platform_interface.dart';

/// An implementation of [UnimpPlatform] that uses method channels.
class MethodChannelUnimp extends UnimpPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('uni_applet');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  /// 初始化Unimp 请在同意隐私政策后调用
  @override
  Future<String?> initUniMp() async {
    return await methodChannel.invokeMethod<String>("initSDK");
  }

  @override
  Future<String?> openUniMp(String appID,
      {String? path, Map<String, dynamic>? extraData}) async {
    // 通过渠道，调用原生代码代码的方法
    return await methodChannel.invokeMethod<String>(
        "openApplet", {"AppID": appID, "Path": path, "ExtraData": extraData});
  }
}
