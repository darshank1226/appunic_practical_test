// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:practical_test/app/theme/app_color.dart';

import '../controllers/conversion_screen_controller.dart';

class ConversionScreenView extends GetView<ConversionScreenController> {
  const ConversionScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: AppBar(
        backgroundColor: AppColor.black,
        title: Text("Conversation"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColor.white,
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.volume_off,
                color: AppColor.white,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.share,
                color: AppColor.white,
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    chat_image(),
                    SizedBox(height: 30),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(width: 1.5, color: Colors.grey.shade300),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            chat_text(),
                            SizedBox(height: 10),
                            txt_btn_icon(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          send_msg_textfield(),
        ],
      ),
    );
  }

  Widget chat_image() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1.5, color: Colors.grey.shade300),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/venti_views.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget chat_text() {
    return Text(
      "Innovation fuels progress, igniting humanity's journey forward. From the wheel to the internet, each invention reshapes our world. Through collaboration and imagination, we transcend limitations, unlocking new horizons. In this ever-evolving landscape, creativity thrives, propelling us towards a brighter tomorrow.",
      style: TextStyle(color: AppColor.white),
    );
  }

  Widget txt_btn_icon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.grey.shade300),
          ),
          child: TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.replay_circle_filled,
              color: Colors.white,
            ),
            label: Text(
              'Regenerate',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.grey.shade300),
          ),
          child: TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.copy,
              color: Colors.white,
            ),
            label: Text(
              'Copy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget send_msg_textfield() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Write a message',
          hintStyle: TextStyle(color: Colors.grey.shade700),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          suffixIcon: IconButton(
            icon: Image.asset(
              "assets/send_two.png",
              height: 30,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
