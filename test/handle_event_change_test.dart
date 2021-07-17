import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:handle_event_change/handle_event_change.dart';

void main() {
  const MethodChannel channel = MethodChannel('handle_event_change');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await HandleEventChange.platformVersion, '42');
  });
}
