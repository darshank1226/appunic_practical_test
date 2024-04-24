import 'package:get/get.dart';

import '../modules/chatbot_screen/bindings/chatbot_binding.dart';
import '../modules/chatbot_screen/views/chatbot_view.dart';
import '../modules/conversion_screen/bindings/conversion_screen_binding.dart';
import '../modules/conversion_screen/views/conversion_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile_screen/bindings/profile_screen_binding.dart';
import '../modules/profile_screen/views/profile_screen_view.dart';
import '../modules/recent_screen/bindings/recent_screen_binding.dart';
import '../modules/recent_screen/views/recent_screen_view.dart';
import '../modules/subscribe_screen/bindings/subscribe_screen_binding.dart';
import '../modules/subscribe_screen/views/subscribe_screen_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: _Paths.CHATBOT,
      page: () => const ChatbotView(),
      binding: ChatBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: _Paths.RECENT_SCREEN,
      page: () => const RecentScreenView(),
      binding: RecentScreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SCREEN,
      page: () => const ProfileScreenView(),
      binding: ProfileScreenBinding(),
    ),
    GetPage(
      name: _Paths.CONVERSION_SCREEN,
      page: () => const ConversionScreenView(),
      binding: ConversionScreenBinding(),
    ),
    GetPage(
      name: _Paths.SUBSCRIBE_SCREEN,
      page: () => const SubscribeScreenView(),
      binding: SubscribeScreenBinding(),
    ),
  ];
}
