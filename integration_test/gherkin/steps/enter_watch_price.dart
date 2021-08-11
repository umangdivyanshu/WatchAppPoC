import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_test/flutter_test.dart';

final andIEnterWatchPrice = and1<String, FlutterWidgetTesterWorld>(
  'I enter watch price {String}',
  (wprice, context) async {
    final tester = context.world.rawAppDriver;

    try {
      final inputWatchPrice = find.byKey(ValueKey('watchPrice'));
      await tester.enterText(inputWatchPrice, wprice);
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);
