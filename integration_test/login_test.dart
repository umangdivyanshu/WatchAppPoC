import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:pocwatchapp/main.dart';
import 'package:pocwatchapp/screens/home_screen.dart';
import 'package:pocwatchapp/screens/login_screen.dart';

void main() {
  final IntegrationTestWidgetsFlutterBinding binding =
      IntegrationTestWidgetsFlutterBinding.ensureInitialized()
          as IntegrationTestWidgetsFlutterBinding;

  group('login test', () {
    testWidgets("validating login with blank input",
        (WidgetTester tester) async {
      try {
        await tester.pumpWidget(MyApp());
        await tester.pumpAndSettle(Duration(seconds: 2));
        print('App launched');
        expect(
            find.text(
                'This is a watch shopping app in which you can browser different watches, add to cart, add new products'),
            findsOneWidget);

        //identifying using widget type
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();

        //validating user has moved to Login Page
        expect(
            find.text(
                'This is a watch shopping app in which you can browser different watches, add to cart, add new products'),
            findsNothing);
        expect(find.byType(LoginScreen), findsOneWidget);

        //tapping login button
        var loginBtn = find.byKey(ValueKey('LoginSubmitBtnKey'));
        await tester.tap(loginBtn);
        await tester.pumpAndSettle();

        //validating error messages and current state
        expect(find.text('Email id is required.11'), findsOneWidget);
        expect(find.text('Password is required.11'), findsOneWidget);
        expect(find.byType(LoginScreen), findsOneWidget);
      } catch (Exception) {
        //await binding.convertFlutterSurfaceToImage();
        await binding.takeScreenshot('blankInputLogin');
        expect(tester.takeException(), Exception);
      }
    });

  testWidgets("validating login with valid credentials",
      (WidgetTester tester) async {
    
    try {
      await tester.pumpWidget(MyApp());
    await tester.pumpAndSettle(Duration(seconds: 2));
    print('App launched');
    expect(
        find.text(
            'This is a watch shopping app in which you can browser different watches, add to cart, add new products'),
        findsOneWidget);

    //identifying using widget type
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    //validating user has moved to Login Page
    expect(
        find.text(
            'This is a watch shopping app in which you can browser different watches, add to cart, add new products'),
        findsNothing);
    expect(find.byType(LoginScreen), findsOneWidget);

    //entering email
    var emailInput = find.byKey(ValueKey('loginTxtKey'));
    await tester.enterText(emailInput, 'user');

    //entering password
    var passwordInput = find.byKey(ValueKey('passwordTxtKey'));
    await tester.enterText(passwordInput, 'password');

    //tapping login button
    var loginBtn = find.byKey(ValueKey('LoginSubmitBtnKey'));
    await tester.tap(loginBtn);
    await tester.pumpAndSettle();

    //validating succesful login and current state
    expect(find.text('Email id is required.'), findsNothing);
    expect(find.text('Password is required.'), findsNothing);
    expect(find.byType(HomeScreen), findsOneWidget);
    } catch (Exception) {
        await binding.takeScreenshot('validLogin');
        expect(tester.takeException(), Exception);
      }
  });

  testWidgets("validating login with invalid credentials",
      (WidgetTester tester) async {

    try{
        await tester.pumpWidget(MyApp());
    await tester.pumpAndSettle(Duration(seconds: 2));
    print('App launched');
    expect(
        find.text(
            'This is a watch shopping app in which you can browser different watches, add to cart, add new products'),
        findsOneWidget);

    //identifying using widget type
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    //validating user has moved to Login Page
    expect(
        find.text(
            'This is a watch shopping app in which you can browser different watches, add to cart, add new products'),
        findsNothing);
    expect(find.byType(LoginScreen), findsOneWidget);

    //entering email
    var emailInput = find.byKey(ValueKey('loginTxtKey'));
    await tester.enterText(emailInput, 'user123');

    //entering password
    var passwordInput = find.byKey(ValueKey('passwordTxtKey'));
    await tester.enterText(passwordInput, 'password123');

    //tapping login button
    var loginBtn = find.byKey(ValueKey('LoginSubmitBtnKey'));
    await tester.tap(loginBtn);
    await tester.pumpAndSettle();

    //validating error messages and current state
    expect(find.text('Incorrect Email'), findsOneWidget);
    expect(find.text('Incorrect password'), findsOneWidget);
    expect(find.byType(LoginScreen), findsOneWidget);
    }catch (Exception) {
        await binding.takeScreenshot('invalidlCredentialsLogin');
        expect(tester.takeException(), Exception);
      }
  });
  });
}
