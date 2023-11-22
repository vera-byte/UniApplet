import Flutter
import UIKit

public class UniAppletPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "uni_applet", binaryMessenger: registrar.messenger())
    let instance = UniAppletPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "initSDK":
      result("IOS initSDK")
//      DCUniMPSDKEngine.initSDKEnvironment()
      // initDCUniMPSDK();
    case "openApplet":
      result("IOS openApplet")
      
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  // // 打开小程序
  //   public func openApplet() -> String{
  //     return "123";
  // }
  // // sdk初始化
  // public func initDCUniMPSDK(){
  //  return DCUniMPSDKEngine.initSDKEnvironment()
  // }
}
