import 'package:copyd/controller/all_product_category.dart';
import 'package:copyd/controller/category_controller.dart';
import 'package:copyd/controller/single_product_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CategoryController());
    Get.put(AllProductController());
    Get.put(SingleProductController());
  }
}
