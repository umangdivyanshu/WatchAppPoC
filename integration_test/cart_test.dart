import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:pocwatchapp/main.dart';
import 'package:pocwatchapp/screens/cart_page.dart';
import 'package:pocwatchapp/screens/home_screen.dart';
import 'package:pocwatchapp/screens/login_screen.dart';

void main() {
  final IntegrationTestWidgetsFlutterBinding binding =
      IntegrationTestWidgetsFlutterBinding.ensureInitialized()
          as IntegrationTestWidgetsFlutterBinding;

  group('cart test', () {
    testWidgets("adding and removing items in the cart",
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

          //validating error message and current state
          expect(find.text('Email id is required.'), findsNothing);
          expect(find.text('Password is required.'), findsNothing);
          expect(find.byType(HomeScreen), findsOneWidget);

          //adding products to the cart
          //await tester.tap(find.byType(ElevatedButton).first);
          // await tester.tap(find.byKey(ValueKey('Armani button')));
          await tester.tap(find.byType(ElevatedButton).at(2));
          await tester.pumpAndSettle(Duration(seconds: 1));

          //tapping on cart icon
          //await tester.scrollUntilVisible(find.byIcon(Icons.shopping_cart), 0.5);

          final gesture = await tester.createGesture(kind: PointerDeviceKind.mouse);
          await gesture.addPointer(location: Offset.zero);
          addTearDown(gesture.removePointer);
          await tester.pump();
          await gesture
              .moveTo(tester.getCenter(find.byKey(ValueKey('cartIcon'))))
              .then((value) => tester.tap(find.byKey(ValueKey('cartIcon'))));
          //await tester.tap(find.byIcon(Icons.shopping_cart));
          await tester.pumpAndSettle(Duration(seconds: 5));
          //await tester.tap(find.byKey(ValueKey('cartIcon')));
          // await tester.pumpAndSettle(Duration(seconds: 5));
          //await tester.tapAt(Offset(11, 11));
          //await tester.pumpAndSettle(Duration(seconds: 5));

          //validating user has moved to Cart Page
          expect(find.byType(ProductCartPage), findsOneWidget);
          expect(find.text('Remove from Cart'), findsOneWidget);

          //removing the product from the cart
          await tester.tap(find.byType(ElevatedButton).first);
          await tester.pumpAndSettle(Duration(seconds: 1));

          //validating item has been removed from the cart
          expect(find.text('Cart is Empty'), findsOneWidget);
      }catch (Exception) {
        DateTime currentDate = DateTime.now();
        await binding.takeScreenshot('cartTest$currentDate');
        expect(tester.takeException(), Exception);
      }
    });
  });
}
