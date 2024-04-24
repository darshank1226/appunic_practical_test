import 'package:get/get.dart';

import '../controllers/recent_screen_controller.dart';

class RecentScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecentScreenController>(
      () => RecentScreenController(),
    );
  }
}
