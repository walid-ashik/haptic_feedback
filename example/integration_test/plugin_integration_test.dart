// This is a basic Flutter integration test.
//
// Since integration tests run in a full Flutter application, they can interact
// with the host side of a plugin implementation, unlike Dart unit tests.
//
// For more information about Flutter integration tests, please see
// https://docs.flutter.dev/cookbook/testing/integration/introduction

import 'package:flutter_test/flutter_test.dart';
import 'package:haptic_feedback/haptic_feedback.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('canVibrate test', (WidgetTester tester) async {
    final canVibrate = await Haptics.canVibrate;
    // The result depends on the host platform running the test.
    expect(canVibrate, true);
  });
}
