import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocwatchapp/screens/home_screen.dart';
import 'package:pocwatchapp/utilities/constants.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body:  Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: const DecorationImage(
            image: AssetImage('images/background.png'),
            // image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.black,
            width: 8,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Text(
                'Watch App Poc',
                style: kButtonTextStyle,
                textAlign: TextAlign.center,

              ),
             Container(
               width: 200,
               height: 200,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   color: Colors.white,

                   image: DecorationImage(
                       image: AssetImage('images/main.jpeg'),
                       fit: BoxFit.cover
                   )
               ),
             ),

              Text(
                'This is a watch shopping app in which you can browser different watches, add to cart, add new products',
                style: kWelcomePageTextStyle,
                textAlign: TextAlign.center,
              ),
              ElevatedButton(onPressed: () {
                print('Chekc');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>HomeScreen()),
                );
              },
                  child: Text('List Screen', style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
                  )
            ],
          ),
        ),
      ),
      appBar: AppBar(
       title: Text(
         'Watch App Poc'
       ),
      ),
    );
  }
}

