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

    expect(find.byType(MyCustomForm), findsOneWidget);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final andIEnterWatchDescription = and1<String, FlutterWidgetTesterWorld>(
  'I enter watch description {String}',
  (wdescription, context) async {
    final tester = context.world.rawAppDriver;

    final inputWatchDescription = find.byKey(ValueKey('watchDescription'));
    tester.testTextInput.register();
    await tester.enterText(inputWatchDescription, wdescription);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final andIEnterWatchImagePath = and1<String, FlutterWidgetTesterWorld>(
  'I enter watch image path {String}',
  (wimgpath, context) async {
    final tester = context.world.rawAppDriver;

    final inputImage = find.byKey(ValueKey('watchImage'));
    tester.testTextInput.register();
    await tester.enterText(inputImage, wimgpath);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final andIEnterWatchPrice = and1<String, FlutterWidgetTesterWorld>(
  'I enter watch price {String}',
  (wprice, context) async {
    final tester = context.world.rawAppDriver;

    final inputWatchPrice = find.byKey(ValueKey('watchPrice'));
    tester.testTextInput.register();
    await tester.enterText(inputWatchPrice, wprice);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final andIEnterWatchTitle = and1<String, FlutterWidgetTesterWorld>(
  'I enter watch title {String}',
  (wtitle, context) async {
    final tester = context.world.rawAppDriver;

    final inputWatchTitle = find.byKey(ValueKey('watchTitle'));
    tester.testTextInput.register();
    await tester.enterText(inputWatchTitle, wtitle);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final theISeeAlertPopupWithMessage = then1<String, FlutterWidgetTesterWorld>(
  'I see alert popup with message {String}',
  (popupMessage, context) async {
    final tester = context.world.rawAppDriver;

    expect(find.text(popupMessage), findsOneWidget);
    await tester.pumpAndSettle(Duration(seconds: 2));
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final whenITapSaveButton = when<FlutterWidgetTesterWorld>(
  'I tap on Save button',
  (context) async {
    final tester = context.world.rawAppDriver;

    await tester.pumpAndSettle(Duration(seconds: 1));
    await tester.tap(find.byType(TextButton).first);
    await tester.pumpAndSettle(Duration(seconds: 2));
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);
