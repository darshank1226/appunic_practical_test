// ignore_for_file: unrelated_type_equality_checks, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:practical_test/app/theme/app_color.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(() => controller.screens[controller.selectedIndex.value]),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: AppColor.black,
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildNavItem(Icons.chat, 0),
              buildNavItem(Icons.access_time_outlined, 1),
              buildNavItem(Icons.person, 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () => controller.onItemTapped(index),
      child: Obx(
        () => Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: controller.selectedIndex.value == index
                ? Colors.white
                : Colors.transparent,
          ),
          child: Icon(
            icon,
            size: 30.0,
            color: controller.selectedIndex.value == index
                ? AppColor.black
                : AppColor.white,
          ),
        ),
      ),
    );
  }
}
