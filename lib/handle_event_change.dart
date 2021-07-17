import 'dart:async';
import 'package:flutter/services.dart';
import 'package:handle_event_change/devk.dart';
typedef void EventChangeHandler(HandleEventChangeResult openedResult);
class HandleEventChange {
  static HandleEventChange devk = new HandleEventChange();
  MethodChannel _channel = const MethodChannel('DEVK');
  EventChangeHandler? _eventChangeHandler;
  HandleEventChange() {
    this._channel.setMethodCallHandler(_handleMethod);
  }
  void setDataEventHandler(EventChangeHandler handler) {
    _eventChangeHandler = handler;
    _channel.invokeMethod("DEVK#initEventChangeParams");
  }
  Future<Null> _handleMethod(MethodCall call) async {
    if (call.method == 'DEVK#handleCallBackParams' && this._eventChangeHandler != null) {
      this._eventChangeHandler!(HandleEventChangeResult(call.arguments.cast<String, dynamic>()));
    }
    return null;
  }
}
