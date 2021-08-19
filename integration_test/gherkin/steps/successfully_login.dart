import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pocwatchapp/screens/home_screen.dart';

/// Shows an example of using the `WidgetTester` from the `World` context rather than
/// using the implementation agnostic `appDriver`
final thenISuccessfullyLoginToHomescreen = then<FlutterWidgetTesterWorld>(
  'I successfully login to see homescreen',
  (context) async {
    final tester = context.world.rawAppDriver;

    // try {
    //validating succesful login and current state
    expect(find.text('Email id is required.'), findsNothing);
    expect(find.text('Password is required.'), findsNothing);
    expect(find.byType(HomeScreen), findsOneWidget);
    // } on FlutterError {
    //   // pump for 2 seconds and stop
    //   await tester.pump(const Duration(seconds: 2));
    // }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);
