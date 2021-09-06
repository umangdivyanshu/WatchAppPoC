import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pocwatchapp/screens/home_screen.dart';
import 'package:pocwatchapp/screens/login_screen.dart';

final givenAppIsRunningFine = given<FlutterWidgetTesterWorld>(
  'the app is running fine',
  (context) async {
    final tester = context.world.rawAppDriver;

    try {
      print('App launched');
      expect(
          find.text(
              'This is a watch shopping app in which you can browser different watches, add to cart, add new products'),
          findsOneWidget);
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);

final whenITapNextButton = when<FlutterWidgetTesterWorld>(
  'I tap the Next button',
  (context) async {
    final tester = context.world.rawAppDriver;

    try {
      //identifying using widget type

      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);

final thenISeeLoginScreen = then<FlutterWidgetTesterWorld>(
  'I see the login screen',
  (context) async {
    final tester = context.world.rawAppDriver;

    try {
      //validating user has moved to Login Page
      expect(
          find.text(
              'This is a watch shopping app in which you can browser different watches, add to cart, add new products'),
          findsNothing);
      expect(find.byType(LoginScreen), findsOneWidget);
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);

final whenITapLoginButton = when<FlutterWidgetTesterWorld>(
  'I tap on login button',
  (context) async {
    final tester = context.world.rawAppDriver;

    try {
      //tapping login button
      var loginBtn = find.byKey(ValueKey('LoginSubmitBtnKey'));
      await tester.tap(loginBtn);
      await tester.pumpAndSettle();
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);

final thenISeeErrorMessageForBlankInput = then<FlutterWidgetTesterWorld>(
  'I see error messages for blank input',
  (context) async {
    final tester = context.world.rawAppDriver;

    try {
      //validating error messages and current state
      await tester.pump(const Duration(seconds: 1));
      expect(find.text('Email id is required.'), findsOneWidget);
      expect(find.text('Password is required.'), findsOneWidget);
      expect(find.byType(LoginScreen), findsOneWidget);
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);

final andIEnterUsername = and1<String, FlutterWidgetTesterWorld>(
  'I enter the username {String}',
  (uname, context) async {
    final tester = context.world.rawAppDriver;

    try {
      var emailInput = find.byKey(ValueKey('loginTxtKey'));
      await tester.enterText(emailInput, uname);
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);

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

final thenISeeErrorMessageForInvalidInput = then<FlutterWidgetTesterWorld>(
  'I see error messages for invalid input',
  (context) async {
    final tester = context.world.rawAppDriver;

    try {
      //validating error messages and current state
      await tester.pump(const Duration(seconds: 1));
      expect(find.text('Incorrect Email'), findsOneWidget);
      expect(find.text('Incorrect password'), findsOneWidget);
      expect(find.byType(LoginScreen), findsOneWidget);
    } on FlutterError {
      // pump for 2 seconds and stop
      await tester.pump(const Duration(seconds: 2));
    }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);

final thenISuccessfullyLoginToHomescreen = then<FlutterWidgetTesterWorld>(
  'I successfully login to see homescreen',
  (context) async {
    final tester = context.world.rawAppDriver;

    // try {
    //validating succesful login and current state
    expect(find.text('Email id is required.'), findsNothing);
    expect(find.text('Password is required.'), findsNothing);
    expect(find.byType(HomeScreen), findsOneWidget);
    // } on FlutterError {
    //   // pump for 2 seconds and stop
    //   await tester.pump(const Duration(seconds: 2));
    // }
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 5),
);
