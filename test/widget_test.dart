import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsocapp/main.dart';

void main(){
  testWidgets("Char count in a String", (WidgetTester tester) async {
    // including the MyApp widget to test
    await tester.pumpWidget(MyApp());

    // finding text field widget by tpe text field
    var textField = find.byType(TextField);

    //expecting to find a text field widget
    expect(textField, findsOneWidget);

    //we are entering text in the text field
    await tester.enterText(textField, "hello");

    //We expect to find hello written in the text field
    expect(find.text('hello'), findsOneWidget);

    //find a button who has text "Count"
    var btn = find.text("Count");

    //We expect to find a button with that name
    expect(btn, findsOneWidget);

    // the code taps the button to check the output
    await tester.tap(btn);

    // Wait for one frame to execute the action
    await tester.pump();

    //We expect to find 5 which is the output of length of String hello
    expect(find.text("5"), findsOneWidget);
  });
}