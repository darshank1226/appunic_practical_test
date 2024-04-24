// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:practical_test/app/modules/chatbot_screen/controllers/chatbot_controller.dart';
import 'package:practical_test/app/routes/app_pages.dart';
import 'package:practical_test/app/theme/app_color.dart';
import 'package:practical_test/app/utils/static_array.dart';
import 'package:practical_test/app/widgets/button_widget.dart';
import 'package:practical_test/app/widgets/custom_sizebox_widget.dart';

class ChatbotView extends GetView<ChatBotController> {
  const ChatbotView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                welcome_container(),
                10.h,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explain",
                      style: TextStyle(
                          color: AppColor.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "(Example)",
                      style: TextStyle(color: AppColor.grey, fontSize: 18),
                    )
                  ],
                ),
                10.h,
                explain_example_container(),
                10.h,
                file_select_category_listview(context),
                15.h,
                Text(
                  "Write & Edit",
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                15.h,
                http_container(),
                15.h,
                Text(
                  "Translate",
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                10.h,
                translate_container(),
                15.h,
                Text(
                  "Ask to chatbot",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                10.h,
                ask_chatbox_container(),
                20.h,
                summarize_textfield(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget profile_picture_img() {
    return Container(
      width: 60,
      height: 60,
      decoration: ShapeDecoration(shape: CircleBorder(), color: Colors.white),
      child: DecoratedBox(
        decoration: ShapeDecoration(
            shape: CircleBorder(),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/profile_picture.png"))),
      ),
    );
  }

  Widget welcome_container() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.grey)),
      child: ListTile(
        leading: profile_picture_img(),
        title: Text(
          "Hey Johs!",
          style: TextStyle(color: AppColor.white, fontSize: 16),
        ),
        subtitle: Text(
          "Welcome to musemind",
          style: TextStyle(color: AppColor.white, fontSize: 12),
        ),
        trailing: CommonElevatedButton(
          width: 120,
          onPressed: () {
            Get.toNamed(Routes.SUBSCRIBE_SCREEN);
          },
          borderRadius: BorderRadius.circular(50),
          child: Text(
            '10 Entries',
            style: TextStyle(color: AppColor.white),
          ),
        ),
      ),
    );
  }

  Widget explain_example_container() {
    return Row(
      children: [
        Flexible(
          child: Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade800,
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Quantam Computing in simple term",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        15.w,
        Flexible(
          child: Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade800,
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Creative ideas for a birthday?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget file_select_category_listview(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
          itemCount: StaticArray.filePickerList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  final routeName =
                      StaticArray.filePickerList[index]['routeName'];
                  Get.toNamed(routeName);
                },
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.pink, Colors.orange]),
                      color: Colors.pink.shade200,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          StaticArray.filePickerList[index]['image'],
                          height: 30,
                        ),
                        5.h,
                        Text(
                          StaticArray.filePickerList[index]['fileText'],
                          style: TextStyle(color: AppColor.white, fontSize: 14),
                        ),
                        Text(
                          StaticArray.filePickerList[index]['text'],
                          style: TextStyle(color: AppColor.white, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget http_container() {
    return Row(
      children: [
        Flexible(
          child: Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade800,
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "How make an HTTP request in Javascript?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        15.w,
        Flexible(
          child: Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade800,
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Craft Compelling Tels With Easy",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget translate_container() {
    return Row(
      children: [
        Flexible(
          child: Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade800,
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "What Your Text to Translate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        15.w,
        Flexible(
          child: Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade800,
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Translate your Email",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget ask_chatbox_container() {
    return Row(
      children: [
        Flexible(
          child: Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade800,
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Hello! How are you? How can i help you",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        15.w,
        Flexible(
          child: Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade800,
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Can you write email about leave",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget summarize_textfield() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/add_file.png",
            height: 30,
          ),
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Summarize this web page',
              hintStyle: TextStyle(color: Colors.grey.shade700),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              suffixIcon: IconButton(
                icon: Image.asset(
                  "assets/send_one.png",
                  height: 30,
                ),
                onPressed: () {
                  print('Message sent!');
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
