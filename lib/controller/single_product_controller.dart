import 'package:copyd/model/single_product_model.dart';
import 'package:copyd/service/app_service.dart';
import 'package:get/get.dart';

class SingleProductController extends GetxController {
  var product = SingleProduct().obs;
  var isLoading = false.obs;
  Future getSingleProduct(int id) async {
    try {
      isLoading(true);
      var data = await RemoteService.fetchSingleProduct(id);
      if (data != null) {
        product.value = data;
      }
    } catch (e) {
      Get.snackbar("erroe", e.toString());
    }
  }
}
