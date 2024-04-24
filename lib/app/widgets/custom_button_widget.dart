import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.buttonHeight,
      required this.buttonWidth,
      required this.title,
      required this.onButtonPressed,
      this.validate,
      required this.textStyles,
      this.buttonStyles});

  final String title;
  final VoidCallback onButtonPressed;
  final double buttonHeight;
  final double buttonWidth;
  final bool? validate;
  final TextStyle? textStyles;
  final ButtonStyle? buttonStyles;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * buttonHeight,
      width: Get.width * buttonWidth,
      child: ElevatedButton(
        style: buttonStyles,
        onPressed: validate == true
            ? () {
                onButtonPressed();
              }
            : null,
        child: Text(
          title,
          style: textStyles,
        ),
      ),
    );
  }
}
