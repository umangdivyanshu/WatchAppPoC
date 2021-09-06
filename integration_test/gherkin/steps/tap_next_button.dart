// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_gherkin/flutter_gherkin.dart';
// import 'package:gherkin/gherkin.dart';
// import 'package:flutter_test/flutter_test.dart';

// /// Shows an example of using the `WidgetTester` from the `World` context rather than
// /// using the implementation agnostic `appDriver`
// final whenITapNextButton = when<FlutterWidgetTesterWorld>(
//   'I tap the Next button',
//   (context) async {
//     final tester = context.world.rawAppDriver;

//     try {
//       //identifying using widget type
//       await tester.tap(find.byType(ElevatedButton));
//       await tester.pumpAndSettle();
//     } on FlutterError {
//       // pump for 2 seconds and stop
//       await tester.pump(const Duration(seconds: 2));
//     }
//   },
//   configuration: StepDefinitionConfiguration()
//     ..timeout = const Duration(minutes: 5),
// );
