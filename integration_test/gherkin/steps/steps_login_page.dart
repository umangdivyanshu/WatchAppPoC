import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pocwatchapp/screens/home_screen.dart';

import '../pageObjects/page_objects_login_page.dart';
import '../pageObjects/page_objects_product_listing_page.dart';
import '../pageObjects/page_objects_welcome_page.dart';

final welcomePage = WelcomePage();
final loginPage = LoginPage();
final productListingPage = ProductListingPage();

final thenISeeLoginScreen = then<FlutterWidgetTesterWorld>(
  'I see the login screen',
  (context) async {
    final tester = context.world.rawAppDriver;

    //validating user has moved to Login Page
    expect(welcomePage.getWelcomeMessage(), findsNothing);
    expect(loginPage.getLoginScreen(), findsOneWidget);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final whenITapLoginButton = when<FlutterWidgetTesterWorld>(
  'I tap on login button',
  (context) async {
    final tester = context.world.rawAppDriver;

    //tapping login button
    await tester.tap(loginPage.getLoginBtn());
    await tester.pumpAndSettle();
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final thenISeeErrorMessageForBlankInput = then<FlutterWidgetTesterWorld>(
  'I see error messages for blank input',
  (context) async {
    final tester = context.world.rawAppDriver;

    //validating error messages and current state
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('Email id is required.'), findsOneWidget);
    expect(find.text('Password is required.'), findsOneWidget);
    expect(loginPage.getLoginScreen(), findsOneWidget);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final andIEnterUsername = and1<String, FlutterWidgetTesterWorld>(
  'I enter the username {String}',
  (uname, context) async {
    final tester = context.world.rawAppDriver;
    tester.testTextInput.register();
    await tester.enterText(loginPage.getEmailInput(), uname);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final andIEnterPassword = and1<String, FlutterWidgetTesterWorld>(
  'I enter the password {String}',
  (passwd, context) async {
    final tester = context.world.rawAppDriver;

    //entering password
    tester.testTextInput.register();
    await tester.enterText(loginPage.getPasswordInput(), passwd);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final thenISeeErrorMessageForInvalidInput = then<FlutterWidgetTesterWorld>(
  'I see error messages for invalid input',
  (context) async {
    final tester = context.world.rawAppDriver;

    //validating error messages and current state
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('Incorrect Email'), findsOneWidget);
    expect(find.text('Incorrect password'), findsOneWidget);
    expect(loginPage.getLoginScreen(), findsOneWidget);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final thenISeeErrorMessageForInvalidUsername = then<FlutterWidgetTesterWorld>(
  'I see error message for invalid username',
  (context) async {
    final tester = context.world.rawAppDriver;

    //validating error messages and current state
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('Incorrect Email'), findsOneWidget);
    expect(loginPage.getLoginScreen(), findsOneWidget);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final thenISeeErrorMessageForInvalidPassword = then<FlutterWidgetTesterWorld>(
  'I see error message for invalid password',
  (context) async {
    final tester = context.world.rawAppDriver;

    //validating error messages and current state
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('Incorrect password'), findsOneWidget);
    expect(loginPage.getLoginScreen(), findsOneWidget);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);

final thenISuccessfullyLoginToHomescreen = then<FlutterWidgetTesterWorld>(
  'I successfully login to see homescreen',
  (context) async {
    final tester = context.world.rawAppDriver;

    //validating succesful login and current state
    expect(find.text('Email id is required.'), findsNothing);
    expect(find.text('Password is required.'), findsNothing);
    expect(productListingPage.getProductListingScreen(), findsOneWidget);
  },
  configuration: StepDefinitionConfiguration()
    ..timeout = const Duration(minutes: 1),
);
