// ignore_for_file: prefer_const_constructors, use_super_parameters, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:practical_test/app/theme/app_color.dart';
import 'package:practical_test/app/widgets/button_widget.dart';
import 'package:practical_test/app/widgets/custom_sizebox_widget.dart';

import '../controllers/subscribe_screen_controller.dart';

class SubscribeScreenView extends GetView<SubscribeScreenController> {
  const SubscribeScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColor.black,
          appBar: AppBar(
            backgroundColor: AppColor.black,
            title: Text("Coversation"),
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: AppColor.white,
                )),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(width: 1, color: Colors.grey.shade500)),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          "Upgrade to pro and charm like a boss",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: AppColor.white, fontSize: 26),
                        ),
                        15.h,
                        Row(
                          children: [
                            Image.asset(
                              "assets/check_mark.png",
                              height: 20,
                            ),
                            10.w,
                            Text(
                              "Unlimited question and answer",
                              style: TextStyle(
                                  color: AppColor.white, fontSize: 14),
                            ),
                          ],
                        ),
                        10.h,
                        Row(
                          children: [
                            Image.asset(
                              "assets/check_mark.png",
                              height: 20,
                            ),
                            10.w,
                            Text(
                              "Powered by cutting edge AI",
                              style: TextStyle(
                                  color: AppColor.white, fontSize: 14),
                            ),
                          ],
                        ),
                        10.h,
                        Row(
                          children: [
                            Image.asset(
                              "assets/check_mark.png",
                              height: 20,
                            ),
                            10.w,
                            Text(
                              "Faster response speed",
                              style: TextStyle(
                                  color: AppColor.white, fontSize: 14),
                            ),
                          ],
                        ),
                        10.h,
                        Row(
                          children: [
                            Image.asset(
                              "assets/check_mark.png",
                              height: 20,
                            ),
                            10.w,
                            Text(
                              "Higher word limit",
                              style: TextStyle(
                                  color: AppColor.white, fontSize: 14),
                            ),
                          ],
                        ),
                        15.h,
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text("3 days free + then weekly",
                                style: TextStyle(
                                    color: AppColor.white, fontSize: 16)),
                          ),
                        ),
                        15.h,
                        thrre_days_free_subscription_text(),
                        15.h,
                        weekly_subscription_text(),
                        15.h,
                        yearly_subscription_text(),
                      ],
                    ),
                  ),
                ),
                15.h,
                Spacer(),
                subscribe_button(),
                15.h,
                Text(
                  "Restore Purchase",
                  style: TextStyle(color: AppColor.white, fontSize: 14),
                )
              ],
            ),
          )),
    );
  }

  Widget thrre_days_free_subscription_text() {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.shade800, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text("3 days free + then weekly",
            style: TextStyle(color: AppColor.white, fontSize: 16)),
      ),
    );
  }

  Widget weekly_subscription_text() {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.shade800, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Weekly",
                style: TextStyle(color: AppColor.white, fontSize: 16)),
            Text("\$8.99/Week",
                style: TextStyle(color: AppColor.white, fontSize: 16)),
          ],
        ),
      ),
    );
  }

  Widget yearly_subscription_text() {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.shade800, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Yearly",
                style: TextStyle(color: AppColor.white, fontSize: 16)),
            Text("\$49.99/Year",
                style: TextStyle(color: AppColor.white, fontSize: 16)),
          ],
        ),
      ),
    );
  }

  Widget subscribe_button() {
    return CommonElevatedButton(
        width: double.infinity,
        height: 50,
        borderRadius: BorderRadius.circular(10),
        onPressed: () {},
        child: Text(
          "Subscribe",
          style: TextStyle(color: AppColor.white, fontSize: 16),
        ));
  }
}
