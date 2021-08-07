import 'package:pocwatchapptest/models/product_model.dart';
import 'package:pocwatchapptest/services/networking.dart';
import 'package:pocwatchapptest/utilities/constants.dart';
import 'package:pocwatchapptest/models/add_product_model.dart';

class ProductModel {
  Future<dynamic> getProducts() async {
    NetworkHelper networkHelper = NetworkHelper('$openProductsURL');

    var productData = await networkHelper.getData();
    return productData;
  }

  Future<dynamic> addProduct() async {
    NetworkHelper networkHelper = NetworkHelper('$openProductsURL');

    var productData = await networkHelper.postRequest();
    return productData;
  }
}
