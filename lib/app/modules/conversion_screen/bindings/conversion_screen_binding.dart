import 'package:get/get.dart';

import '../controllers/conversion_screen_controller.dart';

class ConversionScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConversionScreenController>(
      () => ConversionScreenController(),
    );
  }
}
