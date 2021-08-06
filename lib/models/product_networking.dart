import 'package:pocwatchapp/models/product_model.dart';
import 'package:pocwatchapp/services/networking.dart';
import 'package:pocwatchapp/utilities/constants.dart';
import 'package:pocwatchapp/models/add_product_model.dart';

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
