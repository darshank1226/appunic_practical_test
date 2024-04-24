// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_test/app/modules/chatbot_screen/views/chatbot_view.dart';
import 'package:practical_test/app/modules/profile_screen/views/profile_screen_view.dart';
import 'package:practical_test/app/modules/recent_screen/views/recent_screen_view.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;
  final List<Widget> screens = [
    ChatbotView(),
    RecentScreenView(),
    ProfileScreenView(),
  ];
  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
