import 'package:copyd/service/app_service.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  var category = [].obs;
  var isLoading = false.obs;
  Future getCategory() async {
    try {
      isLoading(true);
      var data = await RemoteService.fetchCategory();
      if (data != null) {
        category.value = data;
      }
    } catch (e) {
      Get.snackbar("e", e.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getCategory();
  }
}
