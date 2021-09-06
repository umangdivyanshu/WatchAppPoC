// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_gherkin/flutter_gherkin.dart';
// import 'package:gherkin/gherkin.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:pocwatchapp/screens/login_screen.dart';

// /// Shows an example of using the `WidgetTester` from the `World` context rather than
// /// using the implementation agnostic `appDriver`
// final thenISeeErrorMessageForInvalidInput = then<FlutterWidgetTesterWorld>(
//   'I see error messages for invalid input',
//   (context) async {
//     final tester = context.world.rawAppDriver;

//     try {
//       //validating error messages and current state
//       await tester.pump(const Duration(seconds: 1));
//       expect(find.text('Incorrect Email'), findsOneWidget);
//       expect(find.text('Incorrect password'), findsOneWidget);
//       expect(find.byType(LoginScreen), findsOneWidget);
//     } on FlutterError {
//       // pump for 2 seconds and stop
//       await tester.pump(const Duration(seconds: 2));
//     }
//   },
//   configuration: StepDefinitionConfiguration()
//     ..timeout = const Duration(minutes: 5),
// );
