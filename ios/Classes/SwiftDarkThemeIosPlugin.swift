import Flutter
import UIKit

public class SwiftDarkThemeIosPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "dark_theme_ios", binaryMessenger: registrar.messenger())
    let instance = SwiftDarkThemeIosPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {

    switch traitCollection.userInterfaceStyle {
      case .light, .unspecified:
        result(false);
      case .dark:
        result(true);
    }
  }
}