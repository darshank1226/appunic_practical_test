import 'package:get/get.dart';
import 'package:practical_test/app/modules/chatbot_screen/controllers/chatbot_controller.dart';

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatBotController>(
      () => ChatBotController(),
    );
  }
}
