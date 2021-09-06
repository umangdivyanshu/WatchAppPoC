// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_gherkin/flutter_gherkin.dart';
// import 'package:gherkin/gherkin.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:pocwatchapp/screens/login_screen.dart';

// /// Shows an example of using the `WidgetTester` from the `World` context rather than
// /// using the implementation agnostic `appDriver`
// final thenISeeLoginScreen = then<FlutterWidgetTesterWorld>(
//   'I see the login screen',
//   (context) async {
//     final tester = context.world.rawAppDriver;

//     try {
//       //validating user has moved to Login Page
//       expect(
//           find.text(
//               'This is a watch shopping app in which you can browser different watches, add to cart, add new products'),
//           findsNothing);
//       expect(find.byType(LoginScreen), findsOneWidget);
//     } on FlutterError {
//       // pump for 2 seconds and stop
//       await tester.pump(const Duration(seconds: 2));
//     }
//   },
//   configuration: StepDefinitionConfiguration()
//     ..timeout = const Duration(minutes: 5),
// );
