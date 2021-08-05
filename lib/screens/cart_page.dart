import 'package:flutter/material.dart';
import 'package:pocwatchapptest/models/product_model.dart';
import 'package:pocwatchapptest/screens/product_detail.dart';
import 'package:pocwatchapptest/utilities/constants.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ProductCartPage extends StatefulWidget {
  ProductCartPage({required this.productList});
  List<Product> productList = [];

  @override
  _ProductCartPageState createState() => _ProductCartPageState();
}

class _ProductCartPageState extends State<ProductCartPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    //final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    double itemHeight;
    if (kIsWeb) {
      itemHeight = size.height;
      // running on the web!
    } else {
      itemHeight = (size.height - kToolbarHeight - 24) / 2;
      // NOT running on the web! You can check for additional platforms here.
    }
    final double itemWidth = size.width / 2;

    print(itemWidth);
    print(itemHeight);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: Container(
        child: Container(
          child: SafeArea(
            child: widget.productList.length != 0
                ? OrientationBuilder(builder: (context, orientation) {
                    return Container(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: GridView.count(
                              crossAxisCount:
                                  orientation == Orientation.portrait ? 2 : 4,
                              childAspectRatio: itemWidth / itemHeight,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                              padding: EdgeInsets.all(5.0),
                              children: widget.productList
                                  .map(
                                    (data) => GestureDetector(
                                        onTap: () async {
                                          await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProductDetailPage(
                                                        productDetails: data,
                                                      )));
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          color: Colors.white,
                                          child: Center(
                                            child: SingleChildScrollView(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.network(
                                                      Uri.parse(data.imageUrl)
                                                              .isAbsolute
                                                          ? data.imageUrl
                                                          : "https://images-na.ssl-images-amazon.com/images/I/81wGRwNp2VL._UL1500_.jpg",
                                                      width: 250,
                                                      height: 100),
                                                  myWidget(data.title),
                                                  myWidget2(data.description),
                                                  myWidget2(
                                                      data.price.toString()),
                                                  Container(
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: Colors.teal,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 50,
                                                                vertical: 20),
                                                      ),
                                                      child: Text(
                                                        'Remove from Cart',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      onPressed: () {
                                                        this.removeFromCart(
                                                            data);
                                                      },
                                                    ),
                                                    margin: EdgeInsets.only(
                                                        top: 20.0),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )),
                                  )
                                  .toList(),
                            ),
                          ),
                          Container(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 20),
                              ),
                              child: Text(
                                'Place Order',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                this.placeOrder();
                              },
                            ),
                            margin: EdgeInsets.only(top: 20.0),
                          )
                        ],
                      ),
                    );
                  })
                : OrientationBuilder(builder: (context, orientation) {
                    return Center(
                        child: Text("Cart is Empty",
                            style: TextStyle(fontSize: 18, color: Colors.teal),
                            textAlign: TextAlign.center));
                  }),
          ),
        ),
      ),
    );
  }

  Widget myWidget(String text) {
    return Text(text,
        style: kProductTitleTextStyle, textAlign: kProductTextAligment);
  }

  Widget myWidget2(String text) {
    return Text(text,
        style: kProductDescriptionTextStyle, textAlign: kProductTextAligment);
  }

  void removeFromCart(Product item) {
    setState(() {
      if (widget.productList.contains(item)) {
        widget.productList.removeAt(this.widget.productList.indexOf(item));
      }
    });
  }

  void placeOrder() {
    showAlertDialog(context);
    final snackBar = SnackBar(content: Text('Congrats, Order Placed.'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    setState(() {
      widget.productList.removeRange(0, widget.productList.length);
    });
  }

  void showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Congrats"),
      content: Text("Order placed successfully."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
