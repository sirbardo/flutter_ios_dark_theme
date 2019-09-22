#import "DarkThemeIosPlugin.h"
#import <dark_theme_ios/dark_theme_ios-Swift.h>

@implementation DarkThemeIosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDarkThemeIosPlugin registerWithRegistrar:registrar];
}
@end
