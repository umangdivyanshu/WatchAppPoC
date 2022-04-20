import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pocwatchapp/screens/login_screen.dart';

class LoginPage {
  final Finder loginScreen = find.byType(LoginScreen);

  final Finder loginBtn = find.byKey(ValueKey('LoginSubmitBtnKey'));

  final Finder emailInput = find.byKey(ValueKey('loginTxtKey'));

  final Finder passwordInput = find.byKey(ValueKey('passwordTxtKey'));
}
