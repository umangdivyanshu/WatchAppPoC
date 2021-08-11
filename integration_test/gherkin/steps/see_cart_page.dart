import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pocwatchapp/screens/cart_page.dart';

final thenISeeCartPage = then<FlutterWidgetTesterWorld>(
  'I see cart page',
  (context) async {
    final tester = context.world.rawAppDriver;

    try {
      //validating user has moved to Cart Page
      expect(find.byType(ProductCartPage), findsOneWidget);
      expect(find.text('Remove from Cart'), findsOneWidget);
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);
