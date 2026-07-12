// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:excelerate_internship/main.dart';

void main() {
  testWidgets('App displays Week 1 Project Setup', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ExcelerateLearningApp());

    // Verify that the AppBar title is displayed.
    expect(find.text('Excelerate Learning Platform'), findsOneWidget);

    // Verify that the center text is displayed.
    expect(find.text('Week 1 Project Setup'), findsOneWidget);
  });
}
