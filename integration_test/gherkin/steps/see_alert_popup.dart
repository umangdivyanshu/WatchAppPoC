import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_test/flutter_test.dart';

final theISeeAlertPopupWithMessage = then1<String, FlutterWidgetTesterWorld>(
  'I see alert popup with message {String}',
  (popupMessage, context) async {
    final tester = context.world.rawAppDriver;

    try {
      expect(find.text(popupMessage), findsOneWidget);
      await tester.pumpAndSettle(Duration(seconds: 2));
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);
