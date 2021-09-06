// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_gherkin/flutter_gherkin.dart';
// import 'package:gherkin/gherkin.dart';
// import 'package:flutter_test/flutter_test.dart';

// final andIEnterUsername = and1<String, FlutterWidgetTesterWorld>(
//   'I enter the username {String}',
//   (uname, context) async {
//     final tester = context.world.rawAppDriver;

//     try {
//       var emailInput = find.byKey(ValueKey('loginTxtKey'));
//       await tester.enterText(emailInput, uname);
//     } on FlutterError {
//       // pump for 2 seconds and stop
//       await tester.pump(const Duration(seconds: 2));
//     }
//   },
//   configuration: StepDefinitionConfiguration()
//     ..timeout = const Duration(minutes: 5),
// );
