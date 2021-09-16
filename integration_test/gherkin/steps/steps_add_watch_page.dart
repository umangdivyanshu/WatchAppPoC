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

final andIEnterWatchImagePath = and1<String, FlutterWidgetTesterWorld>(
  'I enter watch image path {String}',
  (wimgpath, context) async {
    final tester = context.world.rawAppDriver;

    try {
      final inputImage = find.byKey(ValueKey('watchImage'));
      await tester.enterText(inputImage, wimgpath);
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);

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

final whenITapSaveButton = when<FlutterWidgetTesterWorld>(
  'I tap on Save button',
  (context) async {
    final tester = context.world.rawAppDriver;

    try {
      await tester.pumpAndSettle(Duration(seconds: 1));
      await tester.tap(find.byType(TextButton).first);
      await tester.pumpAndSettle(Duration(seconds: 2));
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);
