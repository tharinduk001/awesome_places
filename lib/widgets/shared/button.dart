import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color? buttonColor;

  const CustomButton(
      {super.key, required this.buttonText, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25)),
        child: Text(
          buttonText,
          style: const TextStyle(color: mainBlack, fontSize: 16),
        ));
  }
}
