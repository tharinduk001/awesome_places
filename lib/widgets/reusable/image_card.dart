import 'package:awesome_places/utils/colors.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final Color titleColor;
  final bool isCornerRounded;

  const ImageCard(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath,
      this.isCornerRounded = false, required this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              color: titleColor,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 15),
        isCornerRounded == true
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
        const SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(
              fontSize: 14, color: mainTextColor, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
