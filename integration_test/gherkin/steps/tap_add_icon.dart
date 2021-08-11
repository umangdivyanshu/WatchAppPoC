import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_test/flutter_test.dart';

final whenITapAddIcon = when<FlutterWidgetTesterWorld>(
  'I tap on Add icon',
  (context) async {
    final tester = context.world.rawAppDriver;

    try {
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle(Duration(seconds: 1));
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);
