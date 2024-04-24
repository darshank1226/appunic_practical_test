import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/recent_screen_controller.dart';

class RecentScreenView extends GetView<RecentScreenController> {
  const RecentScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RecentScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RecentScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
