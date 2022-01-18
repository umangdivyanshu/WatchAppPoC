import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'package:pocwatchapp/screens/welcome_screen.dart';
import 'package:pocwatchapp/utilities/constants.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: WelcomeScreen(),
    );
  }
}
