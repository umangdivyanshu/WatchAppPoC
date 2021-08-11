import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_test/flutter_test.dart';

final andIEnterWatchTitle = and1<String, FlutterWidgetTesterWorld>(
  'I enter watch title {String}',
  (wtitle, context) async {
    final tester = context.world.rawAppDriver;

    try {
      final inputWatchTitle = find.byKey(ValueKey('watchTitle'));
      await tester.enterText(inputWatchTitle, wtitle);
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);
