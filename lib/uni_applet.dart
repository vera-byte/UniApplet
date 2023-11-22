
import 'uni_applet_platform_interface.dart';

class UniApplet {
  Future<String?> getPlatformVersion() {
    return UniAppletPlatform.instance.getPlatformVersion();
  }
}
