import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pocwatchapp/screens/add_product.dart';

final thenISeeFormToAddWatches = then<FlutterWidgetTesterWorld>(
  'I see the form to add watches',
  (context) async {
    final tester = context.world.rawAppDriver;

    try {
      expect(find.byType(MyCustomForm), findsOneWidget);
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);
