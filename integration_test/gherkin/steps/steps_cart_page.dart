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

    //validating user has moved to Cart Page
    expect(find.byType(ProductCartPage), findsOneWidget);
    expect(find.text('Remove from Cart'), findsOneWidget);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final whenITapRemoveFromCartButton = when<FlutterWidgetTesterWorld>(
  'I tap on Remove from Cart button',
  (context) async {
    final tester = context.world.rawAppDriver;

    //removing the product from the cart
    await tester.tap(find.byType(ElevatedButton).first);
    await tester.pumpAndSettle(Duration(seconds: 1));
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final thenIValidateCartIsEmpty = then<FlutterWidgetTesterWorld>(
  'I validate cart is empty',
  (context) async {
    final tester = context.world.rawAppDriver;

    //validating item has been removed from the cart
    expect(find.text('Cart is Empty'), findsOneWidget);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);
