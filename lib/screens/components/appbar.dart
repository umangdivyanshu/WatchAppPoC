
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocwatchapptest/screens/add_product.dart';

class AppBarMain extends StatefulWidget {
  const AppBarMain({Key? key}) : super(key: key);

  @override
  _AppBarMainState createState() => _AppBarMainState();
}

class _AppBarMainState extends State<AppBarMain> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,

      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: Colors.red,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: Colors.green,
          ),
          onPressed: () {

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>AddProductPage()),
            );
          },
        ),
        SizedBox(width: 100 / 2)
      ],
    );
  }
}






