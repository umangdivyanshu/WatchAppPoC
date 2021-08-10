import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_test/flutter_test.dart';

final andIEnterPassword = and1<String, FlutterWidgetTesterWorld>(
  'I enter the password {String}',
  (passwd, context) async {
    final tester = context.world.rawAppDriver;

    try {
      //entering password
      var passwordInput = find.byKey(ValueKey('passwordTxtKey'));
      await tester.enterText(passwordInput, passwd);
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);
