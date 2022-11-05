import 'package:copyd/model/all_product_model.dart';
import 'package:copyd/model/category_model.dart';
import 'package:copyd/model/single_product_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  static const client = http.Client;
  //Fetching Category//
  static Future<List<String>?> fetchCategory() async {
    try {
      var respose = await http
          .get(Uri.parse('https://fakestoreapi.com/products/categories'));
      if (respose.statusCode == 200) {
        var jsonstring = respose.body;
        return allCategoryFromJson(jsonstring);
      } else {
        return null;
      }
    } catch (error) {
      Get.snackbar("error", error.toString());
    }
    return null;
  }

// Fetching AllProduts
  static Future<List<AllProduct>?> fetchAllProducts() async {
    try {
      var respose = await http
          .get(Uri.parse('https://fakestoreapi.com/productsList<AllProduct>'));
      if (respose.statusCode == 200) {
        var jsonstring = respose.body;
        return allProductFromJson(jsonstring);
      } else {
        return null;
      }
    } catch (error) {
      Get.snackbar("error", error.toString());
    }
    return null;
  }

  // Fetching singleProduct
  static Future<SingleProduct?> fetchSingleProduct(int id) async {
    try {
      var response =
          await http.get(Uri.parse('https://fakestoreapi.com/products/$id'));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return singleProductFromJson(jsonString);
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("error", e.toString());
    }
    return null;
  }
}
