import Flutter
import UIKit
import airbridge_flutter_sdk

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    AirbridgeFlutter.initializeSDK(name: "exabr", token:"c3b61a44d8f74811b2f63857cfcd3a7f")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    override func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey : Any] = [:]
    ) -> Bool {
        // track deeplink
        AirbridgeFlutter.trackDeeplink(url: url)

        return true
    }

    // when app is opened with universal links
    override func application(
        _ application: UIApplication,
        continue userActivity: NSUserActivity,
        restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void
    ) -> Bool {
        // track deeplink
        AirbridgeFlutter.trackDeeplink(userActivity: userActivity)

        return true
    }
}
