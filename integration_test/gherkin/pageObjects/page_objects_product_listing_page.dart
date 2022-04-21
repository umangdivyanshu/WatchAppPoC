import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pocwatchapp/screens/home_screen.dart';

class ProductListingPage {
  final Finder addIcon = find.byIcon(Icons.add);

  final Finder productListingScreen = find.byType(HomeScreen);

  Finder getProductListingScreen() {
    return productListingScreen;
  }
}
