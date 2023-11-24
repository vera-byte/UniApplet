import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
    GeneratedPluginRegistrant.register(with: self)
      // let options = NSMutableDictionary(dictionary: launchOptions ?? [:])
      //         options.setValue(NSNumber(value:true), forKey: "debug")
                
      // DCUniMPSDKEngine.initSDKEnvironment(launchOptions: options as! [AnyHashable : Any]);
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
