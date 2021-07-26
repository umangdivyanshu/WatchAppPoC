import 'package:flutter/material.dart';
import 'package:pocwatchapp/models/product_model.dart';
import 'package:pocwatchapp/utilities/constants.dart';


class ProductDetailPage extends StatelessWidget {
  ProductDetailPage({required this.productDetails});
  final Product productDetails;

  @override
  Widget build(BuildContext context) {
    print(productDetails);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Product Details Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Image.network(
                  Uri.parse(productDetails.imageUrl).isAbsolute ? productDetails.imageUrl : "https://images-na.ssl-images-amazon.com/images/I/81wGRwNp2VL._UL1500_.jpg",
                  width: 350,
                  height: 200),
              SizedBox(
                height: 20,
              ),
              Text('Title: ' + productDetails.title,
                  style: kProductTitleTextStyle,
                  textAlign: kProductTextAligment),
              SizedBox(
                height: 20,
              ),
              Text('Description: ' +productDetails.description,
                  style: kProductDescriptionTextStyle,
                  textAlign: kProductTextAligment),
              SizedBox(
                height: 20,
              ),
              Text('Price: ' + '\$' + productDetails.price.toString(),
                  style: kProductPriceTextStyle,
                  textAlign: kProductTextAligment),
            ],
          ),
        ),
      )
    );

  }
}

