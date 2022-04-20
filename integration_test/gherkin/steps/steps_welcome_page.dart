import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_test/flutter_test.dart';

final givenAppIsRunningFine = given<FlutterWidgetTesterWorld>(
  'the app is running fine',
  (context) async {
    final tester = context.world.rawAppDriver;

    print('App launched');
    expect(
        find.text(
            'This is a watch shopping app in which you can browser different watches, add to cart, add new products'),
        findsOneWidget);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final whenITapNextButton = when<FlutterWidgetTesterWorld>(
  'I tap the Next button',
  (context) async {
    final tester = context.world.rawAppDriver;

    //identifying using widget type

    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);
