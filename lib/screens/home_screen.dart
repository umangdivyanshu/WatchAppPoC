import 'package:flutter/material.dart';
import 'package:pocwatchapp/services/networking.dart';
import 'package:pocwatchapp/models/product_networking.dart';
import 'package:pocwatchapp/screens/components/home_body.dart';
import 'package:pocwatchapp/screens/components/test.dart';
import 'package:pocwatchapp/screens/product_detail.dart';
import 'package:pocwatchapp/models/product_model.dart';
import 'package:pocwatchapp/screens/add_product.dart';
import 'package:pocwatchapp/utilities/constants.dart';
import 'package:pocwatchapp/screens/cart_page.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> productItems = [];
  List<Product> cartItems = [];
  List<String> cartItemIds = [];
  int cartCount = 0;

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProductData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buy Watches!"),
        actions: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.shopping_cart),
                  key: ValueKey('cartIcon'),
                  onPressed: () async {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProductCartPage(productList: cartItems)));
                    setState(() {
                      cartCount = this.cartItems.length;
                    });
                  }),
              Positioned(
                  right: 11,
                  top: 11,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6)),
                    constraints: BoxConstraints(minWidth: 12, minHeight: 12),
                    child: Text(
                      '$cartCount',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ))
            ],
          ),
        ],
      ),
      body: homeBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddProductPage()));
          setState(() {});
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
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

  // BoxDecoration myBoxDecoration() {
  //   return BoxDecoration(
  //     border: Border.all()
  //   );
  // }

  Widget homeBody() {
    var size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
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

    return SafeArea(
        child: productItems.length != 0
            ? RefreshIndicator(
                key: _refreshIndicatorKey,
                onRefresh: getProductData,
                child: OrientationBuilder(builder: (context, orientation) {
                  return GridView.count(
                    crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
                    childAspectRatio: itemWidth / itemHeight,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    padding: EdgeInsets.all(5.0),
                    children: productItems
                        .map(
                          (data) => GestureDetector(
                              onTap: () async {
                                await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductDetailPage(
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
                                            Uri.parse(data.imageUrl).isAbsolute
                                                ? data.imageUrl
                                                : "https://images-na.ssl-images-amazon.com/images/I/81wGRwNp2VL._UL1500_.jpg",
                                            width: 250,
                                            height: 100),
                                        myWidget(data.title),
                                        myWidget2(data.description),
                                        myWidget2(data.price.toString()),

                                        // Text(data.title,
                                        //     style: kProductTitleTextStyle,
                                        //     textAlign: kProductTextAligment),
                                        // Text(data.description,
                                        //     style: kProductDescriptionTextStyle,
                                        //     textAlign: kProductTextAligment),
                                        // Text(data.price.toString(),
                                        //     style: kProductPriceTextStyle,
                                        //     textAlign: kProductTextAligment),
                                        Container(
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.teal,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 50, vertical: 20),
                                            ),
                                            // key: ValueKey(
                                            //   data.title + ' button'),
                                            child: Text(
                                              this.cartItems.contains(data)
                                                  ? 'Remove from Cart'
                                                  : 'Add to Cart',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            onPressed: () {
                                              this.addToCart(data);
                                            },
                                          ),
                                          margin: EdgeInsets.only(top: 20.0),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                        )
                        .toList(),
                  );
                }),
              )
            : Center(child: CircularProgressIndicator()));
  }

  void addToCart(Product item) {
    setState(() {
      if (this.cartItems.contains(item)) {
        this.cartItems.removeAt(this.cartItems.indexOf(item));
      } else {
        this.cartItems.add(item);
      }
      cartCount = this.cartItems.length;
    });
  }

  Future<void> getProductData() async {
    List<Product> items = [];
    var productData = await ProductModel().getProducts();
    print('test:$productData');

    var keys = productData.keys;
    print(keys);
    for (String item in keys) {
      var value = productData[item];
      if (value is Map<String, dynamic>) {
        Product item = new Product(
            id: value["id"] ?? "",
            title: value["title"] ?? "",
            description: value["description"] ?? "",
            imageUrl: value["imageUrl"] ??
                "https://images-na.ssl-images-amazon.com/images/I/81wGRwNp2VL._UL1500_.jpg",
            price: value["price"] ?? "");
        items.add(item);
      }
    }

    setState(() {
      if (productItems.isNotEmpty) {
        productItems.removeRange(0, productItems.length);
      }
      productItems.addAll(items);
    });
    // Navigator.push(context, MaterialPageRoute(builder: (context) {
    //   return LocationScreen(
    //     locationWeather: weatherData,
    //   );
    // }));
  }
}
