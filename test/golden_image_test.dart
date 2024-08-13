// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_test_counter/my_home_page.dart';


void main() {
  testWidgets('Splash screen Golden test', (WidgetTester tester) async {
    // set the surface size 450 x 930
    await tester.binding.setSurfaceSize(const Size(450, 930));

    // Build the SplashScreen with the loaded asset
    await tester.pumpWidget(
      const MaterialApp(
        home: MyHomePage(),
      ),
    );

    // Ensure the splash screen is fully rendered
    await tester.pumpAndSettle();

    // Take the screenshot
    const goldenPath = 'Golden/login_screen.png';
    await expectLater(find.byType(MyHomePage), matchesGoldenFile(goldenPath));

    // Reset the surface size after the test
    await tester.binding.setSurfaceSize(null);
  });

}

