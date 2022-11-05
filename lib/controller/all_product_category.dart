import 'package:copyd/service/app_service.dart';
import 'package:get/get.dart';

class AllProductController extends GetxController {
  var products = [].obs;
  var isLoading = false.obs;
  Future getProducts() async {
    try {
      isLoading(true);
      var data = await RemoteService.fetchAllProducts();
      if (data != null) {
        products.value = data;
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("error", e.toString());
    }
  }

  @override
  void onInit() {
    super.onInit();
    getProducts();
  }
}
