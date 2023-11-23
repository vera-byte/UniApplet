import 'uni_applet_platform_interface.dart';

class Unimp {
  Future<String?> getPlatformVersion() {
    return UnimpPlatform.instance.getPlatformVersion();
  }

  Future<String?> initUniMp() {
    return UnimpPlatform.instance.initUniMp();
  }

  /// 打开小程序
  ///
  /// [appID] 小程序的AppID
  ///
  /// [path] 小程序打开的路径 默认首页
  Future<String?> openUniMp(
    String appID, {
    String? path,
    Map<String, dynamic>? extraData,
  }) {
    // 创建渠道与原生沟通
    final Map<String, dynamic> extraData = {};
    return UnimpPlatform.instance.openUniMp(
      appID,
      path: path,
      extraData: extraData,
    );
  }
}
