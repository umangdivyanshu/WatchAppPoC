import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_test/flutter_test.dart';

final andIEnterWatchDescription = and1<String, FlutterWidgetTesterWorld>(
  'I enter watch description {String}',
  (wdescription, context) async {
    final tester = context.world.rawAppDriver;

    try {
      final inputWatchDescription = find.byKey(ValueKey('watchDescription'));
      await tester.enterText(inputWatchDescription, wdescription);
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);
