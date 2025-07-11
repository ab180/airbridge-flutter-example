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
    AirbridgeFlutter.initSDK(appName: "exabr", appToken:"c3b61a44d8f74811b2f63857cfcd3a7f")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    override func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey : Any] = [:]
    ) -> Bool {
        // track deeplink
        AirbridgeFlutter.deeplink.handleURLSchemeDeeplink(url: url)

        return true
    }

    // when app is opened with universal links
    override func application(
        _ application: UIApplication,
        continue userActivity: NSUserActivity,
        restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void
    ) -> Bool {
        // track deeplink
        AirbridgeFlutter.deeplink.handle(userActivity: userActivity)

        return true
    }
}
