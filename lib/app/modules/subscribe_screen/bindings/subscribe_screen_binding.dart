import 'package:get/get.dart';

import '../controllers/subscribe_screen_controller.dart';

class SubscribeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubscribeScreenController>(
      () => SubscribeScreenController(),
    );
  }
}
