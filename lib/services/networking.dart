import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:pocwatchapp/models/add_product_model.dart';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }

  Future<http.Response> postRequest () async {
   // print(productData);
    Map data = {
      "description" : "Rolex-New",
      "imageUrl" : "https://images-na.ssl-images-amazon.com/images/I/81wGRwNp2VL._UL1500_.jpg",
      "price" : 88171716,
      "title" : "Rolex12"
    };
    //encode Map to JSON
    var body = json.encode(data);

    var response = await http.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: body
    );
    print("${response.statusCode}");
    print("${response.body}");
    return response;
  }

}
