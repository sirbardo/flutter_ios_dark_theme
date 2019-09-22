import 'dart:async';

import 'package:flutter/services.dart';

class DarkThemeIos {
  static const MethodChannel _channel =
      const MethodChannel('dark_theme_ios');

  static Future<bool> get isDarkTheme async {
    final bool isDark = await _channel.invokeMethod('getDarkTheme');
    return isDark;
  }
}
