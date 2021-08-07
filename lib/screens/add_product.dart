import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:pocwatchapptest/models/add_product_model.dart';
import 'package:http/http.dart' as http;
import 'package:pocwatchapptest/models/product_model.dart';
import 'package:pocwatchapptest/models/product_networking.dart';
import 'package:pocwatchapptest/utilities/constants.dart';

class AddProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Add Product Page';
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
        backgroundColor: Colors.teal,
      ),
      body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  AddNewProduct _newProduct = new AddNewProduct();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            onChanged: (text) {
              this._newProduct.title = text;
              print('Title field: $text');
            },
            key: ValueKey("watchTitle"),
            validator: (text) {
              return (text == null || text.isEmpty) ? 'Title required' : null;
            },
            decoration: kTextFieldInputTitleDecoration,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            onChanged: (text) {
              this._newProduct.description = text;
              print('Descption field: $text');
            },
            key: ValueKey("watchDescription"),
            validator: (text) {
              return (text == null || text.isEmpty)
                  ? 'Description required'
                  : null;
            },
            decoration: kTextFieldInputDescrptionDecoration,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            onChanged: (text) {
              this._newProduct.price = text;
              print('Price text field: $text');
            },
            key: ValueKey("watchPrice"),
            validator: (text) {
              return (text == null || text.isEmpty) ? 'Price required' : null;
            },
            decoration: kTextFieldInputPriceDecoration,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            onChanged: (text) {
              this._newProduct.imageUrl = text;
              print('Image field: $text');
            },
            key: ValueKey("watchImage"),
            // validator: (text)
            // {
            //   return (text == null || text.isEmpty) ? 'ImageUrl required' : null;
            // },
            decoration: kTextFieldInputImageUrlDecoration,
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Center(
              child: TextButton(
                onPressed: () {
                  this.submit();
                },
                key: ValueKey("save"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal)),
                child: Text('Save',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            )),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black54),
                ),
                key: ValueKey("cancel"),
                child: Text('Cancel',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            )),
      ],
    );
  }

  Future<void> submit() async {
    print('Submit function clicked');

    // First validate form.
    //  if (this._formKey.currentState!.validate()) {
    // _formKey.currentState!.save(); // Save our form now.

    final response = await http.post(
      Uri.parse(
          'https://react-my-burger-64464-default-rtdb.firebaseio.com/products.json'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': this._newProduct.title,
        'description': this._newProduct.description,
        'price': this._newProduct.price,
        'imageUrl':
            'https://images-na.ssl-images-amazon.com/images/I/81wGRwNp2VL._UL1500_.jpg',
        // this._newProduct.imageUrl
      }),
    );

    // print("Response - " + response.statusCode.toString());
    if (response.statusCode == 200) {
      //_formKey.currentState!.reset();
      showAlertDialog(context);
      print("Alert box displayed");
      // final snackBar = SnackBar(content: Text('Yay! Item Added!'));
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      final snackBar = SnackBar(content: Text('Failed'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      //   showAlertDialog(context);
    }
    //throw Exception('Failed to add item.');
  }

  //var productData = await ProductModel().addProduct();
  //print(productData);

}

void showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    key: ValueKey("successfulAlert"),
    onPressed: () {
      //Navigator.pop(context);
      //Navigator.pop(context);
      int count = 0;
      Navigator.of(context).popUntil((_) => count++ >= 2);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Congrats"),
    content: Text("Product Added Successfully"),
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
