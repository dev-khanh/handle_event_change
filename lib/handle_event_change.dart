
import 'dart:async';

import 'package:flutter/services.dart';

class HandleEventChange {
  static const MethodChannel _channel =
      const MethodChannel('handle_event_change');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
