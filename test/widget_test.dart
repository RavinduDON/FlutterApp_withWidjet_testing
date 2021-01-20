// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('Hi There'), findsOneWidget);
    expect(find.text('Have a nice day..'), findsOneWidget);
    expect(find.text(''), findsOneWidget);

    await tester.enterText(find.byType(TextField), "Name");
    expect(find.text('Name'), findsOneWidget );

    expect(find.text('Ok'), findsOneWidget);
    expect(find.byType(FlatButton),findsOneWidget);
    await tester.tap(find.byType(FlatButton));
    await tester.pump();

  });
}
