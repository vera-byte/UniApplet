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
        
        // initializeSDK();
    case "openApplet":
        if let args = call.arguments as? [String: Any] {
          var  callbackMessage = openUniMP(arguments:args)
            result("IOS openApplet:"+callbackMessage)
              } else {
                  result(FlutterError(code: "INVALID_ARGUMENTS", message: "Expected arguments as [String: Any]", details: nil))
              }
      
    default:
      result(FlutterMethodNotImplemented)
    }
  }
    func openUniMP(arguments:[String: Any]) -> String {
       let AppID = arguments["AppID"] as? String ?? ""
       let Path = arguments["Path"] as? String ?? ""
       let ExtraData = arguments["ExtraData"] as? [String: Any] ?? [:]
        var callBackMessage = "no err:"+AppID;
        if AppID == "" {
            callBackMessage =  "AppId Is Empty"
            return callBackMessage
        }
        checkUniMPResoutce(appid: AppID)
        let configuration = DCUniMPConfiguration.init()
        configuration.enableBackground = true
        
        DCUniMPSDKEngine.openUniMP(AppID, configuration: configuration) { instance, error in
            if instance != nil {
                callBackMessage = "小程序打开成功"
                print(callBackMessage)
            } else {
                callBackMessage = "打开失败"
                print(error as Any)
            }
        }
        return callBackMessage
    }
    
    func checkUniMPResoutce(appid: String) -> Void {
        let wgtPath = Bundle.main.path(forResource: appid, ofType: "wgt") ?? ""
        if DCUniMPSDKEngine.isExistsUniMP(appid) {
            let version = DCUniMPSDKEngine.getUniMPVersionInfo(withAppid: appid)!
            let name = version["code"]!
            let code = version["code"]!
            print("小程序：\(appid) 资源已存在，版本信息：name:\(name) code:\(code)")
        } else {
            do {
                try DCUniMPSDKEngine.installUniMPResource(withAppid: appid, resourceFilePath: wgtPath, password: nil)
                let version = DCUniMPSDKEngine.getUniMPVersionInfo(withAppid: appid)!
                let name = version["code"]!
                let code = version["code"]!
                print("✅ 小程序：\(appid) 资源释放成功，版本信息：name:\(name) code:\(code)")
            } catch let err as NSError {
                print("❌ 小程序：\(appid) 资源释放失败:\(err)")
            }
        }
    }
}
