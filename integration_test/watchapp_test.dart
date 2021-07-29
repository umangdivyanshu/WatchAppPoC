import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:pocwatchapp/main.dart';
import 'package:pocwatchapp/screens/add_product.dart';
import 'package:pocwatchapp/screens/cart_page.dart';
import 'package:pocwatchapp/screens/components/home_body.dart';
import 'package:pocwatchapp/screens/home_screen.dart';
import 'package:pocwatchapp/screens/login_screen.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // testWidgets("adding and removing items from the cart",
  //     (WidgetTester tester) async {
  //   await tester.pumpWidget(MyApp());
  //   await tester.pumpAndSettle(Duration(seconds: 2));
  //   print('App launched');
  //   expect(
  //       find.text(
  //           'This is a watch shopping app in which you can browser different watches, add to cart, add new products'),
  //       findsOneWidget);

  //   //identifying using widget type
  //   await tester.tap(find.byType(ElevatedButton));
  //   await tester.pumpAndSettle();

  //   //validating user has moved to Login Page
  //   expect(
  //       find.text(
  //           'This is a watch shopping app in which you can browser different watches, add to cart, add new products'),
  //       findsNothing);
  //   expect(find.byType(LoginScreen), findsOneWidget);

  //   //entering email
  //   var emailInput = find.byKey(ValueKey('loginTxtKey'));
  //   await tester.enterText(emailInput, 'user');

  //   //entering password
  //   var passwordInput = find.byKey(ValueKey('passwordTxtKey'));
  //   await tester.enterText(passwordInput, 'password');

  //   //tapping login button
  //   var loginBtn = find.byKey(ValueKey('LoginSubmitBtnKey'));
  //   await tester.tap(loginBtn);
  //   await tester.pumpAndSettle();

  //   //validating error message and current state
  //   expect(find.text('Email id is required.'), findsNothing);
  //   expect(find.text('Password is required.'), findsNothing);
  //   expect(find.byType(HomeScreen), findsOneWidget);

  //   //adding products to the cart
  //   //await tester.tap(find.byType(ElevatedButton).first);
  //   // await tester.tap(find.byKey(ValueKey('Armani button')));
  //   await tester.tap(find.byType(ElevatedButton).at(2));
  //   await tester.pumpAndSettle(Duration(seconds: 1));

  //   //tapping on cart icon
  //   await tester.scrollUntilVisible(find.byIcon(Icons.shopping_cart), 0.5);

  //   await tester.tap(find.byIcon(Icons.shopping_cart));
  //   await tester.pumpAndSettle(Duration(seconds: 5));
  //   //await tester.tap(find.byKey(ValueKey('cartIcon')));
  //   // await tester.pumpAndSettle(Duration(seconds: 5));
  //   //await tester.tapAt(Offset(11, 11));
  //   //await tester.pumpAndSettle(Duration(seconds: 5));

  //   //validating user has moved to Cart Page
  //   expect(find.byType(ProductCartPage), findsOneWidget);
  //   expect(find.text('Remove from Cart'), findsOneWidget);

  //   //removing the product from the cart
  //   await tester.tap(find.byType(ElevatedButton).first);
  //   await tester.pumpAndSettle(Duration(seconds: 1));

  //   //validating item has been removed from the cart
  //   expect(find.text('Cart is Empty'), findsOneWidget);
  // });

  testWidgets("adding watches to the cart ", (WidgetTester tester) async {
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

    //validating error message and current state
    expect(find.text('Email id is required.'), findsNothing);
    expect(find.text('Password is required.'), findsNothing);
    expect(find.byType(HomeScreen), findsOneWidget);

    //tapping floating add icon
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle(Duration(seconds: 1));
    expect(find.byType(MyCustomForm), findsOneWidget);

    //identifying the widget by key-value
    final inputWatchTitle = find.byKey(ValueKey('watchTitle'));
    await tester.enterText(inputWatchTitle, 'Tag Heur');

    final inputWatchDescription = find.byKey(ValueKey('watchDescription'));
    await tester.enterText(inputWatchDescription, 'Smartwatch');

    final inputWatchPrice = find.byKey(ValueKey('watchPrice'));
    await tester.enterText(inputWatchPrice, '80000');

    final inputImage = find.byKey(ValueKey('watchImage'));
    await tester.enterText(inputImage,
        'https://images-na.ssl-images-amazon.com/images/I/81wGRwNp2VL._UL1500_.jpg');
    await tester.pumpAndSettle(Duration(seconds: 1));

    // final saveBtn = find.byKey(ValueKey('save'));
    // await tester.tap(saveBtn);
    await tester.tap(find.byType(TextButton).first);
    print("Save button tapped");
    await tester.pumpAndSettle(Duration(seconds: 5));
    print("Waited 30 seconds");
    //expect(find.byKey(ValueKey('successfulAlert')), findsOneWidget);
    expect(find.text('Product Added Successfully'), findsOneWidget);
    await tester.pumpAndSettle(Duration(seconds: 5));
    //var alert = await tester.allElements.toList();
    // final alertbox = tester.widget(find.byKey(ValueKey('successfulAlert')));
    //await tester.pumpFrames(alertbox, Duration(seconds: 30));
  });
}
