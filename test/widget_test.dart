// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Replace 'nuthan' with your actual project name if different
import 'package:nuthan/main.dart';

void main() {
  testWidgets('Portfolio app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the app title is displayed
    expect(find.text('My Portfolio'), findsOneWidget);

    // Verify that personal information is displayed
    expect(find.text('Info'), findsOneWidget);

    // Verify that education section is available
    expect(find.text('Education'), findsOneWidget);

    // Verify that projects section is available
    expect(find.text('Projects'), findsOneWidget);

    // Verify that the CV download option is present
    expect(find.text('CV'), findsOneWidget);
  });
}
