import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_test/flutter_test.dart';

final thenIAddProductToCart = then1<int, FlutterWidgetTesterWorld>(
  'I add product at index {int} to the cart',
  (index, context) async {
    final tester = context.world.rawAppDriver;

    try {
      //adding products to the cart
      await tester.tap(find.byType(ElevatedButton).at((index - 1)));
      await tester.pumpAndSettle(Duration(seconds: 1));
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);

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

final whenITapCartIcon = when<FlutterWidgetTesterWorld>(
  'I tap on cart icon',
  (context) async {
    final tester = context.world.rawAppDriver;

    try {
      //tapping on cart icon
      final gesture = await tester.createGesture(kind: PointerDeviceKind.mouse);
      await gesture.addPointer(location: Offset.zero);
      addTearDown(gesture.removePointer);
      await tester.pump();
      await gesture
          .moveTo(tester.getCenter(find.byKey(ValueKey('cartIcon'))))
          .then((value) => tester.tap(find.byKey(ValueKey('cartIcon'))));
      await tester.pumpAndSettle(Duration(seconds: 1));
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);