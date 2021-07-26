import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
  color: Colors.teal
);
const kWelcomePageTextStyle = TextStyle(
    fontSize: 15.0,
    fontFamily: 'Spartan MB',
    color: Colors.teal
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);


const kTextFieldInputDescrptionDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.description,
    color: Colors.black,
  ),
  hintText: 'Watch Description',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
const kTextFieldInputTitleDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.title,
    color: Colors.black,
  ),
  hintText: 'Watch Title',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
const kTextFieldInputPriceDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.price_check,
    color: Colors.black,
  ),
  hintText: 'Watch Price',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
const kTextFieldInputImageUrlDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.image,
    color: Colors.black,
  ),
  hintText: 'Watch Image',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);

// body component

//const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);
const kDefaultPaddin = 20.0;

// New constants

const kPrimaryColor = Colors.teal;
const kTextColor = Color(0xFF241424);
const kDarkButton = Color(0xFF372930);
const openProductsURL = 'https://react-my-burger-64464-default-rtdb.firebaseio.com/products.json?print=pretty';

const kProductTitleTextStyle = TextStyle(
  fontFamily: 'Oswald',
  fontSize: 20.0,
  color: Colors.black87,
  fontWeight: FontWeight.bold,
);


const kProductDescriptionTextStyle = TextStyle(
  fontFamily: 'Oswald',
  fontSize: 15.0,
  color: Colors.black87,
  fontWeight: FontWeight.normal,

);

const kProductPriceTextStyle = TextStyle(
  fontFamily: 'Oswald',
  fontSize: 18.0,
  color: Colors.black87,
  fontWeight: FontWeight.normal,
);

const kProductTextAligment = TextAlign.center;